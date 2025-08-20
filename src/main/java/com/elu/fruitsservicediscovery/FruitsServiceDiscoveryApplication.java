package com.elu.fruitsservicediscovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class FruitsServiceDiscoveryApplication {

    /**
     * @param args
     */
    public static void main(final String[] args) {
        SpringApplication.run(FruitsServiceDiscoveryApplication.class, args);
    }

}
