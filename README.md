# Docker Special Folders

This is a sample .NET Core application that prints all the `System.Environment.SpecialFolder` values from within a Docker container.

## How to use it?

You need to build a container and run it using standard Docker command line tools:

```
C:\work\DockerSpecialFolders> docker build -t dockerspecialfolders .
```

Now the container is ready to run:

```
C:\work\DockerSpecialFolders> docker run dockerspecialfolders
```
