# Boris Bikes Challenges

London's Boris Bikes (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.

Welcome to being a developer

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

DockingStation <--release_bike--> a Bike

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Bike <---working?---> true/false

```