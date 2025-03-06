#!/usr/bin/env python3
import json, subprocess

# package format is
#   vulkan-icd-loader 1.4.303-1 -> 1.4.304.1-1
package_process = subprocess.run(["yay", "-Qu"], capture_output=True)

if package_process.returncode == 0:
    packages = list(
        map(lambda d: str(d.decode("UTF-8")), package_process.stdout.splitlines())
    )
    packages.sort()

    output = {
        "text": len(packages) if len(packages) > 0 else "",
        "class": "custom-packages",
        "alt": "",
        "tooltip": "\n".join(packages),
    }

    print(json.dumps(output))
