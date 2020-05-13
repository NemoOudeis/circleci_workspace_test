# Example of Circle CI workspace to hand over data between jobs

A simple example of a build pipeline where the first job creates several output, persists some of them to a workspace and a second job uses that output from the previous job by attaching to the wrokspace. Somithing like this:

```
job "build" - produces ->   build/output.other  - forget about -> x
                            build/output.txt    - persist -> workspace
                                    ^                           ^
                                   use                          |
                                    |                           |
                                 job "use-output" ----------- attach 
```

Reference:
* [`persist_to_workspace` bulid step](https://circleci.com/docs/2.0/configuration-reference/#persist_to_workspace)
* [`attach_workspace` bulid step](https://circleci.com/docs/2.0/configuration-reference/#attach_workspace)
* [prebuilt circle ci images](https://circleci.com/docs/2.0/circleci-images/)
