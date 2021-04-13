package cxc.hhkjxy;

/**
 * @ClassName:Operation
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/3/30
 */

public class Operation {
    private double numOne;
    private double numTwo;
    private double result;
    private String operator;


    public double getNumOne() {
        return numOne;
    }

    public void setNumOne(double numOne) {
        this.numOne = numOne;
    }

    public double getNumTwo() {
        return numTwo;
    }

    public void setNumTwo(double numTwo) {
        this.numTwo = numTwo;
    }

    /**
     * 获取计算结果
     *
     * @param
     * @Description: 获取计算结果
     * @returns:double
     * @author: cxc
     * @date: 2021/3/30
     */
    public double getResult() {
        if (operator == null) {
            return 0.0;
        }
        String trim = operator.trim();
        switch (trim) {
            case "+":
                return numOne + numTwo;
            case "-":
                return numOne - numTwo;
            case "*":
                return numOne * numTwo;
            case "/":
                return numOne / numTwo;
            default:
                return 0.0;
        }
    }

    public void setResult(double result) {
        this.result = result;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
}
