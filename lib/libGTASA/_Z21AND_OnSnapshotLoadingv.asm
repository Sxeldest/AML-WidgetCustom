; =========================================================
; Game Engine Function: _Z21AND_OnSnapshotLoadingv
; Address            : 0x26ED98 - 0x26EDA2
; =========================================================

26ED98:  LDR             R0, =(byte_6D7144 - 0x26EDA0)
26ED9A:  MOVS            R1, #1
26ED9C:  ADD             R0, PC; byte_6D7144
26ED9E:  STRB            R1, [R0]
26EDA0:  BX              LR
