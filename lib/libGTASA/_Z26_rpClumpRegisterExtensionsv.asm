; =========================================================
; Game Engine Function: _Z26_rpClumpRegisterExtensionsv
; Address            : 0x213D3C - 0x213D84
; =========================================================

213D3C:  PUSH            {R4,R6,R7,LR}
213D3E:  ADD             R7, SP, #8
213D40:  SUB             SP, SP, #8
213D42:  LDR             R2, =(sub_213D9C+1 - 0x213D4E)
213D44:  MOVS            R4, #0
213D46:  LDR             R3, =(nullsub_9+1 - 0x213D52)
213D48:  MOVS            R0, #0xC; int
213D4A:  ADD             R2, PC; sub_213D9C ; void *(*)(void *, int, int)
213D4C:  MOVS            R1, #0x10; unsigned int
213D4E:  ADD             R3, PC; nullsub_9 ; void *(*)(void *, int, int)
213D50:  STR             R4, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
213D52:  BLX             j__Z22RwCameraRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RwCameraRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
213D56:  LDR             R1, =(dword_6BD590 - 0x213D5E)
213D58:  CMP             R0, #0
213D5A:  ADD             R1, PC; dword_6BD590
213D5C:  STR             R0, [R1]
213D5E:  BLT             loc_213D7E
213D60:  LDR             R2, =(sub_213DB8+1 - 0x213D6C)
213D62:  MOVS            R0, #0xC; int
213D64:  LDR             R3, =(nullsub_10+1 - 0x213D70)
213D66:  MOVS            R1, #0x10; unsigned int
213D68:  ADD             R2, PC; sub_213DB8 ; void *(*)(void *, int, int)
213D6A:  STR             R4, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
213D6C:  ADD             R3, PC; nullsub_10 ; void *(*)(void *, int, int)
213D6E:  BLX             j__Z21RpLightRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpLightRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
213D72:  LDR             R1, =(dword_6BD594 - 0x213D78)
213D74:  ADD             R1, PC; dword_6BD594
213D76:  STR             R0, [R1]
213D78:  MOVS            R1, #1
213D7A:  EOR.W           R4, R1, R0,LSR#31
213D7E:  MOV             R0, R4
213D80:  ADD             SP, SP, #8
213D82:  POP             {R4,R6,R7,PC}
