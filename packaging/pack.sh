#!/usr/bin/env sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
PROJECT_PATH="${SCRIPT_DIR}/CustomerManagementSystem.Analyzers.Package/CustomerManagementSystem.Analyzers.Package.csproj"
ARTIFACTS_DIR="${ROOT_DIR}/artifacts"

mkdir -p "${ARTIFACTS_DIR}"

dotnet pack "${PROJECT_PATH}" --output "${ARTIFACTS_DIR}" "$@"
