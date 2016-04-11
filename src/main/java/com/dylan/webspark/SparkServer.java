package com.dylan.webspark;

import spark.Spark;

public class SparkServer {
	
	    public static void main(String[] args) {
	    	Spark.secure("D:/test.jks", "12345678", null, null);
	        Spark.get("/hello", (req, res) -> "Hello World");
	    }
}
