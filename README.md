# Frostpeak Studios UPM Package Template

This is a template for creating UPM packages. We use this for developing and maintaining our Unity packages.

## Setup

1. Use this repository as a template for your new package.
2. Clone the repository to your local machine.
3. Modify the `package.json` file.
4. Modify the `README.md` and `Documentation/Template.md` files.
5. Modify the assemblies and namespaces to match your org/project.
6. Develop your package.

## Development Workflow

If developing and maintaining multiple packages, it's recommended to have Unity projects for each major Unity
version that is supported, and import each package into the project as a local package.

`Package Manager -> + -> Add package from disk...`

This allows you to make changes to the package and see the effects in the Unity Editor immediately. It also allows
Unity to generate the necessary `.meta` files for the package, without having to move the package back and forth
from `Assets` to `Packages`.

## Deployment and Publishing

When publishing to the Asset Store, use the [Hybrid Packages format](https://github.com/needle-tools/hybrid-packages)
to support both UPM and Asset Store installations.

If publishing elsewhere, or deploying for internal use, the package can be deployed as-is within scoped registries or
using the Git URL.

### Documentation and Samples

The `Documentation` and `Samples` folders will be packaged with the UPM package, but should be renamed to
`Documentation~` and `Samples~` before uploading/publishing the package.

This is to prevent the folders from being automatically imported into the Unity project when the package is imported
and allows the user to decide if they want to import them or not.
