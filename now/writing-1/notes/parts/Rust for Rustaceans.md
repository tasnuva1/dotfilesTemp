- **CHAPTER 1: FOUNDATIONS**
    Talking About Memory
    Memory Terminology
    Variables in Depth
    Memory Regions
    Ownership
    Borrowing and Lifetimes
    Shared References
    Mutable References
    Interior Mutability
    Lifetimes
    Summary
- **CHAPTER 2: TYPES**
    Types in Memory
    Alignment
    Layout
    Complex Types
    Dynamically Sized Types and Wide Pointers
    Traits and Trait Bounds
    Compilation and Dispatch
    Generic Traits
    Coherence and the Orphan Rule
    Trait Bounds
    Marker Traits
    Existential Types
    Summary
- **CHAPTER 3: DESIGNING INTERFACES**
    Unsurprising
    Naming Practices
    Common Traits for Types
    Ergonomic Trait Implementations
    Wrapper Types
    Flexible
    Generic Arguments
    Object Safety
    Borrowed vs. Owned
    Fallible and Blocking Destructors
    Obvious
    Documentation
    Type System Guidance
    Constrained
    Type Modifications
    Trait Implementations
    Hidden Contracts
    Summary
- **CHAPTER 4: ERROR HANDLING**
    Representing Errors
    Enumeration
    Opaque Errors
    Special Error Cases
    Propagating Errors
    Summary
- **CHAPTER 5: PROJECT STRUCTURE**
    Features
    Defining and Including Features
    Using Features in Your Crate
    Workspaces
    Project Configuration
    Crate Metadata
    Build Configuration
    Conditional Compilation
    Versioning
    Minimum Supported Rust Version
    Minimal Dependency Versions
    Changelogs
    Unreleased Versions
    Summary
- **CHAPTER 6: TESTING**
    Rust Testing Mechanisms
    The Test Harness
    #[cfg(test)]
    Doctests
    Additional Testing Tools
    Linting
    Test Generation
    Test Augmentation
    Performance Testing
    Summary
- **CHAPTER 7: MACROS**
    Declarative Macros
    When to Use Them
    How They Work
    How to Write Declarative Macros
    Procedural Macros
    Types of Procedural Macros
    The Cost of Procedural Macros
    So You Think You Want a Macro
    How Do They Work?
    Summary
- **CHAPTER 8: ASYNCHRONOUS PROGRAMMING**
    What’s the Deal with Asynchrony?
    Synchronous Interfaces
    Multithreading
    Asynchronous Interfaces
    Standardized Polling
    Ergonomic Futures
    async/await
    Pin and Unpin
    Going to Sleep
    Waking Up
    Fulfilling the Poll Contract
    Waking Is a Misnomer
    Tasks and Subexecutors
    Tying It All Together with spawn
    Summary
- **CHAPTER 9: UNSAFE CODE**
    The unsafe Keyword
    Great Power
    Juggling Raw Pointers
    Calling Unsafe Functions
    Implementing Unsafe Traits
    Great Responsibility
    What Can Go Wrong?
    Validity
    Panics
    Casting
    The Drop Check
    Coping with Fear
    Manage Unsafe Boundaries
    Read and Write Documentation
    Check Your Work
    Summary
- **CHAPTER 10: CONCURRENCY (AND PARALLELISM)**
    The Trouble with Concurrency
    Correctness
    Performance
    Concurrency Models
    Shared Memory
    Worker Pools
    Actors
    Asynchrony and Parallelism
    Lower-Level Concurrency
    Memory Operations
    Atomic Types
    Memory Ordering
    Compare and Exchange
    The Fetch Methods
    Sane Concurrency
    Start Simple
    Write Stress Tests
    Use Concurrency Testing Tools
    Summary
- **CHAPTER 11: FOREIGN FUNCTION INTERFACES**
    Crossing Boundaries with extern
    Symbols
    Calling Conventions
    Types Across Language Boundaries
    Type Matching
    Allocations
    Callbacks
    Safety
    bindgen and Build Scripts
    Summary
- **CHAPTER 12: RUST WITHOUT THE STANDARD LIBRARY**
    Opting Out of the Standard Library
    Dynamic Memory Allocation
    The Rust Runtime
    The Panic Handler
    Program Initialization
    The Out-of-Memory Handler
    Low-Level Memory Accesses
    Misuse-Resistant Hardware Abstraction
    Cross-Compilation
    Summary
- **CHAPTER 13: THE RUST ECOSYSTEM**
    What’s Out There?
    Tools
    Libraries
    Rust Tooling
    The Standard Library
    Patterns in the Wild
    Index Pointers
    Drop Guards
    Extension Traits
    Crate Preludes
    Staying Up to Date
    What Next?
    Learn by Watching
    Learn by Doing
    Learn by Reading
    Learn by Teaching
    Summary
