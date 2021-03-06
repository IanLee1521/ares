; RUN: not llc -mtriple armvinvalid-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=ARMVINVALID

; RUN: not llc -mtriple armebvinvalid-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=ARMEBVINVALID

; RUN: not llc -mtriple thumbvinvalid-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=THUMBVINVALID

; RUN: not llc -mtriple thumbebvinvalid-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=THUMBEBVINVALID

; RUN: not llc -mtriple thumbv2-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=THUMBV2

; RUN: not llc -mtriple thumbv3-linux-gnueabi %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=THUMBV3

; RUN: not llc -mtriple arm64invalid-linux-gnu %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=ARM64INVALID

; RUN: not llc -mtriple aarch64invalid-linux-gnu %s -o - 2>&1 | \
; RUN: FileCheck %s --check-prefix=AARCH64INVALID

; ARMVINVALID: error: unable to get target for 'armvinvalid--linux-gnueabi'
; ARMEBVINVALID: error: unable to get target for 'armebvinvalid--linux-gnueabi'
; THUMBVINVALID: error: unable to get target for 'thumbvinvalid--linux-gnueabi'
; THUMBEBVINVALID: error: unable to get target for 'thumbebvinvalid--linux-gnueabi'
; THUMBV2: error: unable to get target for 'thumbv2--linux-gnueabi'
; THUMBV3: error: unable to get target for 'thumbv3--linux-gnueabi'
; ARM64INVALID: error: unable to get target for 'arm64invalid--linux-gnu'
; AARCH64INVALID: error: unable to get target for 'aarch64invalid--linux-gnu'
