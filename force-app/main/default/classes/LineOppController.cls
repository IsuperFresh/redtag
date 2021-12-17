public class LineOppController {
    List <OpportunityLineItem> acc = [select	Quantity from OpportunityLineItem];
    public List <OpportunityLineItem> getacc() {
        return acc;
    }
}