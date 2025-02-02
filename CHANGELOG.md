# Changelog
All notable changes to this package will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [v1.1.0] - 2025-02-02

### Added

- Bootstrap scripts to rename assemblies and namespaces
- `csc.rsp` and files to enable nullable reference types for the project

### Changed

- Removed `PEAK_TESTING` define constraint from test assemblies

## [v1.0.1] - 2024-12-17

### Added

- Test assemblies now have the `PEAK_TESTING` define constraint to require `TestMode` to be enabled

### Changed

- Root namespaces have been updated to reflect the package name
- Removed the upstream sync GitHub actions workflow
- JPG and PNG are no longer tracked via LFS by default

## [v1.0.0] - 2024-11-19

- Initial release

## [v0.1.0] - 2024-11-19

- Initial project setup
