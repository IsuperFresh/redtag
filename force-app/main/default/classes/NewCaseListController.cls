public class NewCaseListController {
      public List<Case> getNewCases() {
        List<Case> results = Database.query(
            'SELECT  Id, CaseNumber From Case where status =\'New\'');
             return results;
    }
}