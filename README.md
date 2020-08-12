# Boris Bikes Challenges

London's Boris Bikes (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.

Welcome to being a developer

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
DockingStation <--release_bike--> a Bike
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
Bike <---working?---> true/false
```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```
DockingStation <--dock---> a Bike
```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```
DockingStation <--bike---> a docked Bike
```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```
DockingStation <--bike--> nil
DockingStation <--release_bike--> raise error "No bike available"

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```
DockingStation <--dock(bike)--> raise error "Station is full"

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```
DockingStation <--initialize---> @bikes, @bikes.count >=20 to raise error

```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```
DockingStation <--initialize--> attr capacity

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```
Bike <---report_broken---> @broken = true
Bike <---broken?---> @broken

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```
DockingStation <---release_bike----> raise error "No bike available"

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```
