package cxc.hhkjxy;

/**
 * @ClassName:Circle
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/3/24
 */

public class Circle {
    private double radius;
    private double area;
    private double length;

    public Circle() {
    }

    public Circle(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    /**
    * 获取圆的面积
    *
    * @Description: 获取圆的面积
    * @returns:double
    * @author: cxc
    * @date: 2021/3/24
    */
    public double getArea() {
        return this.radius*this.radius*Math.PI;
    }

    /**
     * 获取圆的周长
     *
     * @param
     * @Description:
     * @returns:double
     * @author: cxc
     * @date: 2021/3/27
    */
    public double getLength() {
        return this.radius*Math.PI*2;
    }
}
