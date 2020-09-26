/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.calcular;

/**
 *
 * @author julio
 */
public class OperacionModelo {
    private double num1;
    private double num2;
    private String[] operaciones;
    
    public OperacionModelo(double num1, double num2,String[] operaciones) {
        this.num1 = num1;
        this.num2 = num2;
        this.operaciones = operaciones;
    }

    public String suma() {
        for (String operacione : operaciones) {
            if (operacione.equalsIgnoreCase("1")) {
                
                return "Resultado de " + num1 + " + " + num2 + " = " + (num1 + num2);
            }
        }
        return "";
        
    }

    public String multiplicacion() {
        
        for (String operacione : operaciones) {
            if (operacione.equalsIgnoreCase("2")) {
                
                return "Resultado de " + num1 + " * " + num2 + " = " + (num1 * num2);
            }
        }
        return "";
        
    }

    public String potencia() {
        for (String operacione : operaciones) {
            if (operacione.equalsIgnoreCase("4")) {
                
                return "Resultado de " + num1 + " (1^ " + num2 + ") = " + (Math.pow(num1, num2));
            }
        }
        return "";
        
    }

    public String mayor() {
        for (String operacione : operaciones) {
            if (operacione.equalsIgnoreCase("3")) {
                
                return (num1 > num2) ? "Numero Mayor: " + num1 : (num1 < num2) ? "Numero Mayor: " + num2 : "Los Numeros son Iguales";
            }
        }
        return "";
    }

    private String binario(double num1) {
        int no1 = (int) num1;
        int aux1 = no1;
        int exp = 0;

        int residuo = 0, binario = 0;

        while (aux1 > 0) {
            residuo = (aux1 % 2);
            binario = (int) (binario + residuo * Math.pow(10, exp));
            exp++;
            aux1 = (aux1 / 2);

        }

  
                
                return num1 + "en numeros binarios es: " + binario;
        
     

    }
    
   
    
    public String numBinario(){
        for (String operacione : operaciones) {
            if (operacione.equalsIgnoreCase("5")) {
                return "Binarios <br/> "+binario(this.num1) +" <br/> "+ binario(this.num2);
            }
        }
        return "";
    }
    public double division() {
        return num1 / num2;
    }
}
