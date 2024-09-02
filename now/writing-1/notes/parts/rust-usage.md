
```rs
## Rust’s big features
- Performance
- Concurrency
- Memory efficiency
- Control
- Safety
```

```rs
Note only:
Systems programming is for:
- Operating systems
- Device drivers of all kinds // In short, systems programming is  resource-constrained  programming where every byte and every CPU cycle counts..
- Filesystems
- Databases
- Code that runs in very cheap devices, or devices that must be extremely reliable
- Cryptography
- Media codecs (software for reading and writing audio, video, and image files)
- Media processing (for example, speech recognition or photo editing software)
- Memory management (for example, implementing a garbage collector)
- Text rendering (the conversion of text and fonts into pixels)
- Implementing higher-level programming languages (like JavaScript and Python)
- Networking
- Virtualization and software containers
- Scientific simulations
- Games
```

```rs
For fast-moving startups to deploy it's product:
- Sourcegraph uses Rust to serve **syntax highlighting across all of its languages**.
- Figma employs Rust in the performance-critical components of its **multi-player server**.
- Parity develops its client to the Ethereum blockchain with Rust.
```

```rs
Large technology leaders adoptation in there products:
- Amazon Web Services (AWS) has used Rust since 2017 for its serverless computing offerings, AWS Lambda and AWS Fargate. With that, Rust has gained further inroads. The company has written the Bottlerocket OS and the AWS Nitro System to deliver its Elastic Compute Cloud (EC2) service. OS for it's usecase and enverment in mind.
- Cloudflare develops many of **its services**, including its **public DNS** which now serverless, and packet inspection offerings with Rust.
- Dropbox rebuilt its backend warehouse, which manages exabytes of storage, with Rust. **exabytes of storage system**
- Google develops parts of Android, such as its Bluetooth module, with Rust. Rust is also used for the `crosvm` component of Chrome OS and plays an important role in Google’s new operating system, Fuchsia. **OS Bluetooth module and another OS component, which runs untrusted operating systems along with virtualized devices. intended to run Linux guests, originally as a security boundary **for running native applications** on the ChromeOS platform.**
- Facebook uses Rust to power Facebook’s web, mobile, and API services, as well as parts of HHVM, the HipHop virtual machine used by the Hack programming language.5
- Microsoft writes components of its Azure platform including **a security daemon** for its Internet of Things (IoT) service in Rust.6
- Mozilla uses Rust to enhance the Firefox web browser, which contains 15 million lines of code. Mozilla’s first two Rust-in-Firefox projects, its **MP4 metadata parser and text encoder/decoder**, led to overall performance and stability improvements.
- GitHub’s **npm storage**, Inc., uses Rust to deliver “upwards of 1.3 billion package downloads per day.”
- Oracle developed a container runtime with Rust to overcome problems with the Go reference implementation.8
- Samsung, via its subsidiary SmartThings, uses Rust in its _Hub_, which is the **firmware backend for its Internet of Things (IoT) service**.
```
