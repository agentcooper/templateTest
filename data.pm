package data;

our $basic = {
  people => [
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, nice => 1 },
    { name => 'Sam', age => 18, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, nice => 1 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, nice => 1 },
    { name => 'Pamela', age => 56, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 , children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 , children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, nice => 1, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18, nice => 1 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14, nice => 1 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, nice => 1 },
    { name => 'Sam', age => 18, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, nice => 1 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, nice => 1 },
    { name => 'Pamela', age => 56, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 , children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 , children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14, nice => 1, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12 },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18, nice => 1 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14 },
    { name => 'Sam', age => 18 },
    { name => 'Steve', age => 23 },
    { name => 'Mary', age => 19 },
    { name => 'John', age => 42 },
    { name => 'Pamela', age => 56 },
    { name => 'Anton', age => 7 },
    { name => 'Roger', age => 12, children => [{name => 'Gary'}, {name => 'Mary'}] },
    { name => 'Andrew', age => 14, nice => 1 }
  ]
};

1;
