; =========================================================
; Game Engine Function: sub_8086C
; Address            : 0x8086C - 0x80884
; =========================================================

8086C:  PUSH            {R7,LR}
8086E:  MOV             R7, SP
80870:  LDR             R0, =(aPluginOndevice - 0x80876); "Plugin::OnDeviceInit()" ...
80872:  ADD             R0, PC; "Plugin::OnDeviceInit()"
80874:  BL              sub_80664
80878:  BL              sub_83A64
8087C:  POP.W           {R7,LR}
80880:  B.W             sub_7E380
