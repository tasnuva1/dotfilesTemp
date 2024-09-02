-  **Chapter 1: Setting up and Configuring Rust Environment**
		Recipe#1: Installing Rust Compiler
		Recipe#2: Creating a New Rust Project
		Recipe#3: Managing Dependencies to Your Project
		What are Dependencies?
		How to Add/Remove/Modify Dependencies?
		Recipe#4: Installing Visual Studio Code IDE for Rust
		Understanding VS Code IDE
		Benefits of VS Code IDE for Rust Users
		Why VS Code IDE for Rust?
		Steps to Install VS Code
		Recipe#5: Supporting Non-Rust Tools and Libraries
		List of Non-Rust Libraries and Packages
		Step-By-Step to Load and Implement Non-Rust Libraries
		Recipe#6: Setting Up Code Testing Tools
		List of Various Code Testing Tools
		Install and Configure Code Testing Tools
		Recipe#7: Installing and Configuring Cargo
		What is Cargo?
		Install Cargo Package Manager
		Step-By-Step Configuring Cargo
- **Chapter 2: Hands-on Traits, Enums and Struct**
		Recipe#1: Working with Traits
		How to Declare Traits?
		Execute a Trait for Struct
		Implement Different Types of Traits
		Recipe#2: Define Function Inside Traits
		Define Function Inside a Trait
		Implement Function Within a Trait
		Declare Generic Functions Inside a Trait
		Recipe#3: How to Define Enums
		Define Enums
		Implement Enums
		Fix Common Issues with Enums
		Recipe#4: Tips and Considerations Regarding Enums
		Declare Variant Values with Types and Fields
		Pattern Match with ‘match’ Expression
		Use of If Let Expressions
		Recipe#5: Parsing and Interpreting Enum Arguments
		Why to Parse Arguments?
		How to Parse Enum Arguments?
		Steps to Interpret Enum Arguments
		Recipe#6: Initialize Array of Structs
		Define Struct and Arrays of Struct
		Initialize Array of Structs Using Loop
		Initialize Array of Structs Using Trait
		Initializing Using Loop and Trait
		Recipe#7: Cloning Structs
		What Is Cloning of Structs?
		Implement Clone Trait for Struct
- **Chapter 3: Pattern Matching, Concurrency, Pointers and Modules**
		Recipe#1: Pattern Matching with Enum
		Need of Pattern Matching with Enum
		Implement Pattern Matching In Rust Applications
		Recipe#2: Working with Tokio
		Basics About Tokio
		Installing and Configuring Tokio
		Recipe#3: Writing Concurrent Programming
		What Is Concurrency In Rust?
		Procedure to Build Concurrent Programs
		Implementing Concurrency to Existing Applications
		Recipe#4: Working with Raw Pointers
		Why Raw Pointers?
		How to Use Raw Pointers In Rust Applications?
		Use of  Multiple Raw Pointers
		Recipe#5: Working with Smart Pointers
		Understanding Smart Pointers
		Smart Pointers Vs Raw Pointers?
		How to Implement Smart Pointer In a Rust Program
		Recipe#6: Using ‘mod’ Modules
		Declaring Mod
		Advantages of Using Mod
		Implement Mod In Existing Rust Program?
- **Chapter 4: Using Declarative and Procedural Macros**
		Recipe#1: Declaring and Implementing Declarative Macros
		Defining Declarative Macros
		Creating Declarative Macro
		Recipe#2: Debugging Declarative Macros
		Steps to Debug Declarative Macro
		How to Debug Series of Declarative Macros In Rust Programs
		Recipe#3: Using Derive Macro for Implementing Traits
		Understanding Derive Macro As An Procedural Macro
		Implementing Derive Macros
		Recipe#4: Using Function-Like Macros
		Understanding Function-Like Macros
		Implementing Function-Like Macro
		Recipe#5: Using Attribute Macros
		Understanding Attribute Macros
		Implementing Attribute Macro
		Recipe#6: Debugging Procedural Macros
		Tips and Tricks to Debug Procedural Macros
		Techniques of Debugging
- **Chapter 5: Implementing Concurrency and Multithreading**
	  Recipe#1: Implementing Concurrent Threadsafe Queues
	  Using Arc<Mutex<T>>
	  Using Std::Sync::Mpsc::Channel()
	  Using Crossbeam::Channel::Bounded()
	  Recipe#2: Implementing Concurrent Hash Maps
	  Understanding Concurrent Hash Map
	  Arc<Mutex<Hashmap<K, V>>> for Concurrent Hash Map
	  Rayon for Concurrent Hash Map
	  Recipe#3: Using Synchronization Mechanisms
	  Using Mutual Exclusion Lock ‘mutex’
	  Using Read-Write Lock ‘rwlock’
	  Using Atomic
	  Recipe#4: Designing Efficient Parallel Algorithms
	  What are Parallel Algorithms?
	  Putting Parallel Algorithms Into Use
	  Designing  Parallel Algorithms From Scratch
	  Recipe#5: Debugging and Testing Concurrent Programs
	  Tips and Techniques to Test and Debug
	  Debugging Using ‘rayon’ and ‘crossbeam’
	  Recipe#6: Optimizing Concurrent Programs
	  Procedure Steps to Rust Optimization
	  Optimizing Rust Program Using Rayon
	  Recipe#7: Dealing with Deadlocks and Livelocks
	  Understanding Deadlocks and Livelocks
- **Chapter 6: Asynchronous Programming**
		Recipe#1: Defining Asynchronous Functions
		Async Keyword
		Programming Asynchronous Function
		Recipe#2: Run Asynchronous Tasks
		Executor
		Using Tokio for Asynchronous Tasks
		Recipe#3: Error Handling
		Result Type: Ok and Err
		Handling Errors Using Result Type
		Recipe#4: Debugging Asynchronous Code
		Tokio-test Crate
		Testing Asynchronous Functions
		Recipe#5: Working with Asynchronous I/O
		I/O Operations
		Performing Asynchronous I/O using Tokio
		Recipe#6: Working with Channels and MPSC/SPSC Communication Patterns
		Channels: MPSC and SPSC
		Using Channel Function to Create MPSC (Multiple Producer, Single Consumer)
		Recipe#7: Implementing Asynchronous Networking
		Tasks of Asynchronous Networking
		Implementing Asynchronous Networking
		Recipe#8: Integrate with Asynchronous Libraries
		Tools and Techniques for Integration
		Using tokio-sync to Integrate Asynchronous Tasks
- **Chapter 7: Developing REST and SOAP APIs**
		Recipe#1: Creating SOAP APIs
		What are SOAP API?
		Benefits of SOAP API -
		Creating SOP API Using ‘xml-Rs’
		Recipe#2: Building RESTful APIs
		What are REST API?
		Benefits of REST API
		Building REST API Using ‘serde’
		Recipe#3: Automating API Documentation
		Rust Tools and Libraries for API Documentation
		Automating API Documentation Using ‘rustdoc’
		Recipe#4: Managing API Orchestration
		Need of API Orchestration
		Managing API Orchestration Using Ocelot
		Recipe#5: Adding Security to API
		Need of Security to APIs
		Ways to Secure APIs
		Securing API Using Actix
		Recipe#6: Monitoring API
		API Performance Monitoring
		Monitoring Errors In API
		Checking API Usage
- **Chapter 8: Building Microservices & Architectures**
		Recipe#1: Applying Fine-Grained SOA
		What Is Fine-Grained SOA?
		Features of Fine-Grained SOA
		Implement Fine-Grained SOA In Rust
		Recipe#2: Layering APIs
		What Is API Layering?
		Implement API Layering
		Recipe#3: Implementing Event-Driven Communication Pattern
		What Is Event-Driven Communication?
		Implementing Event-Driven Communication Pattern In Rust
		Recipe#4: Programming Middlewares
		Understanding Need of Middlewares
		Programming Middlewares for Logging Service
		Stacking Multiple Middlewares
		Recipe#5: End-To-End API Testing
		What Is API Testing?
		Running End-To-End API Testing In Rust -
		Recipe#6: Splitting Monoliths with Strangler Fig Pattern
		What Is Splitting Monoliths?
		Benefit of Splitting Monoliths
		Strangler Fig Pattern Explained!
		Implementing The Strangler Fig Pattern to Split Monoliths
		Recipe#7: Autoscaling Rust Programs
		Rust Libraries for Autoscaling Applications
		Autoscaling Rust Applications with Tokio
- **Chapter 9: Working around CI/CD**
		Recipe#1: Setting Up a Version Control Repository
		Choosing Version Control System
		Setting Up Git Repo
		Recipe#2: Configuring a CI/CD Pipeline
		Understanding Continuous Integration and Continuous Delivery
		Configuring CI/CD Pipeline Using GitHub Actions
		Recipe#3: Customizing CI/CD Pipeline
		Steps to Customize CI/CD
		Recipe#4: Integrating CI/CD Pipeline with Databases and Message Queue
		Procedure to Integrate CI/CD Pipeline
		Use of MySQL, amiquip and RabbitMQ
		Recipe#5: Setting Up Docker Hub Container Registry
		What Is Docker Hub?
		Understanding Container Registry
		Steps to Setup Container Registry
		Establishing Container Registry On Docker Hub
- **Chapter 10: Working around Kubernetes**
		Recipe#1: Setting Up a Kubernetes Cluster On-Premises
		What Is Cluster?
		What Is Kubernetes Cluster?
		Establishing Kubernetes Cluster On-Premises
		Recipe#2: Setting Up a Kubernetes Cluster On AWS
		Using AWS CLI and kubeadm for Setting Up Kubernetes Cluster
		Recipe#3: Setting Up a Kubernetes Cluster On Google Cloud
		Using gcloud and kubeadm to Setup Kubernetes Cluster
		Recipe#4: Setting Up a Kubernetes Cluster On Microsoft Azure
		Using Azure CLI and kubeadm for Kubernetes Cluster
		Recipe#5: Testing The Cluster Setup Across AWS, GCP and Azure
		Procedure to Test the Kubernetes Cluster
		Recipe#6: Writing Deployment Configuration YAML Files
		Understanding YAML Files
		Writing Deployment Configuration Files
		Recipe#7: Setting Up Load Balancers
		Need of Load Balancers
		Steps to Establishing and Configuring Load Balancers
		Installing and Configuring Load Balancers Using HAProxy
		Recipe#8: Setting Up Monitoring and Logging  with Prometheus and Grafana
		Installing and Configuring Prometheus
		Installing and Configuring Grafana
- **Chapter 11: Fuzz Testing and Static Analysis**
		Recipe#1: Identify The Target System
		Steps to Follow for Identification of Target System
		Use of cargo-fuzz to Perform Fuzzing
		Define Wrapper Function to Call Target System
		Recipe#2: Identify Inputs
		Understand The Format of The Input
		Identify Inputs with cargo-fuzz
		Recipe#3: Generate Fuzzed Data
		What Is Fuzzed Data
		Use of cargo-fuzz to Generate Fuzzed Data
		Recipe#4: Best Practices to Run Fuzzing
		Best Practices to Run Fuzz Testing
		Recipe#5: Checking Syntax Errors
		Various Techniques to Identify Syntax Errors
		Executing Techniques to Spot Syntax Errors
		Recipe#6: Detecting Coding Style Issues
		Various Techniques to Detect Flaws In Coding Styles
		Use of CodeScene and LGTM to Improve Coding Styles
		Use of Rust Style Guidelines to Avoid Coding Style Issues
		Recipe#7: Identifying Security Vulnerabilities
		Techniques to Find Security Vulnerabilities
		Using Static Analysis Tool, ‘Miri’ to Spot Vulnerabilities
- **Chapter 12: Code Performance Optimization**
    Recipe#1: Identify Performance Bottlenecks Using ‘perf’
	What Is ‘perf’ Tool?
	Running ‘perf’ Tool and Recording Performance Report
	Recipe#2: Analyze Performance Bottlenecks Using ‘valgrind’
	What Is Valgrind?
	Analyzing Performance Bottlenecks Using ‘valgrind’
	Recipe#3: Running Different Optimization Flags
	What are Optimization Flags In Rust?
	Different Types of Optimization Flags
	How to Implement Optimization Flags In Rust Programs?
	Recipe#4: Using SIMD Instructions for Efficient Performance
	Understanding SIMD Instructions
	What Is ‘simd’ Crate?
	Using ‘simd’ Crate In Rust Application
	Recipe#5: Overcoming Style Violations
	Different Types of Style Violations
	Steps to Remove Style Violations
	Using ‘rustfmt’ and ‘clippy’ to Remove Style Violations
	Recipe#6:  Use of Low-Level Optimization Techniques
	Understanding Low-Level Optimization Techniques
	Benefits of Low-Level Optimization Techniques
	Using Low-Level Optimization Techniques In Rust Programs
	Recipe#7: Utilizing External High Performance Libraries
	List of External High Performance Libraries In Rust
	Utilizing High Performance Libraries In Rust Programs
