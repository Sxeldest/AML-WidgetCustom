; =========================================================
; Game Engine Function: _Z14RpLightDestroyP7RpLight
; Address            : 0x216F74 - 0x216FA6
; =========================================================

216F74:  PUSH            {R4,R6,R7,LR}
216F76:  ADD             R7, SP, #8
216F78:  MOV             R4, R0
216F7A:  LDR             R0, =(dword_683B90 - 0x216F82)
216F7C:  MOV             R1, R4
216F7E:  ADD             R0, PC; dword_683B90
216F80:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
216F84:  MOV             R0, R4; void *
216F86:  BLX             j__Z29_rwObjectHasFrameReleaseFramePv; _rwObjectHasFrameReleaseFrame(void *)
216F8A:  LDR             R0, =(RwEngineInstance_ptr - 0x216F92)
216F8C:  LDR             R1, =(dword_6BD5C8 - 0x216F94)
216F8E:  ADD             R0, PC; RwEngineInstance_ptr
216F90:  ADD             R1, PC; dword_6BD5C8
216F92:  LDR             R0, [R0]; RwEngineInstance
216F94:  LDR             R1, [R1]
216F96:  LDR             R2, [R0]
216F98:  LDR             R0, [R2,R1]
216F9A:  MOV             R1, R4
216F9C:  LDR.W           R2, [R2,#0x140]
216FA0:  BLX             R2
216FA2:  MOVS            R0, #1
216FA4:  POP             {R4,R6,R7,PC}
