# Wire Generate Github Action
This Github Action uses Google's Wire tool to automatically generate necessary wire files for your Go projects across multiple directories.

## Why Run Wire in CI/CD Pipeline?

Google's Wire is a code generation tool that automates connecting components using dependency injection. Wire uses a type-safe, compile-time approach to resolve dependencies in Go applications, which can significantly reduce boilerplate and improve code quality. 

Incorporating Wire into your CI/CD pipeline brings several advantages:

### 1. Automated Dependency Resolution
Incorporating Wire in your CI/CD pipeline helps automate the process of dependency resolution in your Go applications. Wire takes care of initializing components and injecting them into the correct locations, ensuring that components are correctly and efficiently linked.

### 2. Consistency and Reliability
Running Wire in your CI/CD pipeline ensures that the generated code is always up-to-date with your most recent changes, ensuring that dependencies are consistently and correctly resolved across all environments (development, staging, production, etc.). This can help avoid errors and inconsistencies that might arise from manual updates.

### 3. Code Quality and Maintainability
Wire helps maintain high code quality by eliminating the need for manual coding of dependency injection, reducing the possibility of human error. This can also make the code easier to understand and maintain, as Wire generates clear and simple code.

### 4. Early Error Detection
As Wire performs compile-time safety checks, any issue with dependency resolution will cause a build failure. This means that dependency issues are caught early in the pipeline, allowing developers to rectify problems before they reach later stages of development or production.

### 5. Efficiency
Automatically generating Wire code as part of your CI/CD pipeline reduces the manual work required by developers, leaving them more time to focus on other important aspects of application development.


## Inputs
### `directories`

**Required** A space-separated list of directories. These directories should be paths relative to the root of your Github workspace. Default is `"."`, the root of your workspace.

## Usage
Here's a basic example of how to use this action:

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2

  - name: Wire Generate
    uses: DRJ-Technologies/wire-generate@v1
    with:
      directory: "hello-world"
```

In this example, Wire will be run in dir1, dir2, and dir3 of your repository. Make sure to replace your-repo with the actual repository containing the action.

## Contribution

We welcome contributions! Feel free to report any issues or submit pull requests.
