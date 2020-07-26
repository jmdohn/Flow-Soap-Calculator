public class calculator {
    @AuraEnabled @InvocableVariable public Integer intA;
    @AuraEnabled @InvocableVariable public Integer intB;
    @AuraEnabled @InvocableVariable public Integer result;
    @AuraEnabled @InvocableVariable public String operation;
    @AuraEnabled @InvocableVariable public Boolean error;
    
    @InvocableMethod(Label='Calculate')
    public static List<calculator> calculate(List<calculator> calculator){
        tempuriOrg.CalculatorSoap calc = new tempuriOrg.CalculatorSoap();
        if(calculator[0].operation == null){
            calculator[0].error = true;
        } else if(calculator[0].operation == 'Divide'){
            calculator[0].result = calc.Divide(calculator[0].intA, calculator[0].intB);
            calculator[0].error = false;
        } else if(calculator[0].operation == 'Multiply'){
            calculator[0].result = calc.Multiply(calculator[0].intA, calculator[0].intB);
            calculator[0].error = false;
        } else if(calculator[0].operation == 'Subtract'){
            calculator[0].result = calc.Subtract(calculator[0].intA, calculator[0].intB);
            calculator[0].error = false;
        } else if(calculator[0].operation == 'Add'){
            calculator[0].result = calc.Add(calculator[0].intA, calculator[0].intB);
            calculator[0].error = false;
        }
        return calculator;
    }
}