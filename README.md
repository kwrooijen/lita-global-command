# lita-global-command

Lita Global Command adds the :global_command option to your routes
which acts as :command but allows the robot's name to be places
anywhere in the message body.

## Installation

Add lita-global-command to your Lita plugin's gemspec:

``` ruby
spec.add_runtime_dependency "lita-global-command"
```

## Usage


The robot's name is lita.
And we have a practical route for duck.

````route(/duck/, :duck)````

We could leave it as is, add :command or add :global_command.
These would be the effects:

| Route                                             | Text          | Call    |
| ------------------------------------------------- | ------------- | ------- |
| ```route(/duck/, :duck)```                        | duck          | *true*  |
| ```route(/duck/, :duck)```                        | lita duck go! | *true*  |
| ```route(/duck/, :duck)```                        | duck lita go! | *true*  |
| ```route(/duck/, :duck, command: true)```         | duck          | *false* |
| ```route(/duck/, :duck, command: true)```         | lita duck go! | *true*  |
| ```route(/duck/, :duck, command: true)```         | duck lita go! | *false* |
| ```route(/duck/, :duck, global_command: true)```  | duck          | *false* |
| ```route(/duck/, :duck, global_command: true)```  | lita duck go! | *true*  |
| ```route(/duck/, :duck, global_command: true)```  | duck lita go! | *true*  |
