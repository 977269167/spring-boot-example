# Java Configuration

## Method Security

- We can enable annotation-based security using the @EnableGlobalMethodSecurity annotation on any @Configuration instance.

```
    @EnableGlobalMethodSecurity(securedEnabled = true) // enable Spring Security’s @Secured annotation
```

- If you wanted to provide a custom MethodSecurityExpressionHandler.

```
    @EnableGlobalMethodSecurity(prePostEnabled = true)
    public class MethodSecurityConfig extends GlobalMethodSecurityConfiguration {
        @Override
        protected MethodSecurityExpressionHandler createExpressionHandler() {
            // ... create and return custom MethodSecurityExpressionHandler ...
            return expressionHandler;
        }
    }
```

## Core Components

- SecurityContextHolder, to provide access to the SecurityContext.
- SecurityContext, to hold the Authentication and possibly request-specific security information.
- Authentication, to represent the principal in a Spring Security-specific manner.
- GrantedAuthority, to reflect the application-wide permissions granted to a principal.
- UserDetails, to provide the necessary information to build an Authentication object from your application’s DAOs or other source of security data.
- UserDetailsService, to create a UserDetails when passed in a String-based username (or certificate ID or the like).

## Authentication

Setting the SecurityContextHolder Contents Directly
- All you need to do is write a filter (or equivalent) that reads the third-party user information from a location, build a Spring Security-specific Authentication object, and put it into the SecurityContextHolder.