Solid Principles

> [!NOTE]
> 1. S - Single Responsibility Principle (SRP)
> A class should have one reason to change, meaning that it should have only one responsibility or task.
> A class should only perform one job. If a class is responsible for multiple things, it becomes harder to modify, test, and maintain.
> 2. O - Open/Closed Principle (OCP)
> Software entities (classes, modules, functions, etc.) $\color{red}{should\ be\ open\ for\ extension,\ but\ closed\ for\ modification}$. This means that you should be able to extend a class's behavior without modifying its source code.
> You can achieve this using protocols, inheritance, or closures to extend functionality.
> 3. L - Liskov Substitution Principle (LSP)
> Objects of a subclass should be able to replace objects of the superclass without affecting the correctness of the program.
> This means that subclasses should behave in a way that doesn't break the functionality of the parent class when they're used in place of it.
> 4. I - Interface Segregation Principle (ISP)
> A client should not be forced to implement interfaces it does not use. In other words, create smaller, more specific interfaces (or protocols) instead of large, general ones.
> Instead of having a single large protocol, you should divide it into smaller, more specific protocols.
> 5. D - Dependency Inversion Principle (DIP)
> High-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., protocols or interfaces). Additionally, abstractions should not depend on details. Details should depend on abstractions.
> This principle is achieved by depending on protocols or abstract classes rather than concrete implementations.

> [!TIP]
> S - Single Responsibility Principle: A class should do one thing.  
> O - Open/Closed Principle: Classes should be open for extension, but closed for modification.  
> L - Liskov Substitution Principle: Subtypes should be replaceable by their base types without altering the correctness of the program.  
> I - Interface Segregation Principle: Use smaller, specific interfaces or protocols, not large general ones.  
> D - Dependency Inversion Principle: High-level modules should depend on abstractions, not concrete classes.  
