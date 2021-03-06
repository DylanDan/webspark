package com.dylan.webspark;

import java.net.InetAddress;
import java.net.UnknownHostException;

import spark.Spark;

public class SparkServer {
	
	    public static void main(String[] args) throws UnknownHostException {
	    	//Spark.secure("D:/test.jks", "12345678", null, null);
	    	if(args.length==0){
	    		System.out.println("parameter can not be null");
	    		System.exit(-1);
	    	}
	    	
	    	int port = Integer.valueOf(args[0]);
	    	
	    	if(port< 1024){
	    		System.out.println("the port should bigger than 1024");
	    		System.exit(-1);
	    	}
	    	
	    	Spark.port(port);
	    	InetAddress addr = InetAddress.getLocalHost();
	    	String ip=addr.getHostAddress().toString();	
	    	Spark.ipAddress(ip);
	        Spark.get("/hello", (req, res) -> "Hello World");
	    }
}
