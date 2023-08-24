from simple_salesforce.exceptions import SalesforceMalformedRequest
from cumulusci.core.utils import process_bool_arg
from cumulusci.tasks.salesforce import BaseSalesforceApiTask
import json

class CheckExpressionSet(BaseSalesforceApiTask):
    def _run_task(self):
        try:
            results = self.sf.query("SELECT Id, Status FROM ExpressionSetDefinitionVersion WHERE MasterLabel LIKE '%ES_Claim%'")["records"]
        except SalesforceMalformedRequest as e:
            self.logger.error(
                f"The settings value ExpressionSetDefinitionVersion.Status could not be queried: {e}"
            )
            self.return_values = False

            if not process_bool_arg(
                self.options.get("treat_missing_as_failure", False)
            ):
                raise e

            return

        if not results:
            self.logger.info(
                "Located no Settings records. Returning positive preflight result."
            )
            self.return_values = True

            return self.return_values
        
        values = results[0]["Status"]
        
        self.return_values = values != "Active"

        self.logger.info(
            f"Completed Expression Set Inactive preflight check with result {self.return_values}"
        )
