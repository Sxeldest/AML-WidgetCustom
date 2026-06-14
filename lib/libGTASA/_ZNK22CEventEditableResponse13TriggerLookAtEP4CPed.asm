; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse13TriggerLookAtEP4CPed
; Address            : 0x370A7C - 0x370B0A
; =========================================================

370A7C:  PUSH            {R4-R7,LR}
370A7E:  ADD             R7, SP, #0xC
370A80:  PUSH.W          {R8}
370A84:  SUB             SP, SP, #0x20
370A86:  MOV             R4, R1
370A88:  LDR             R1, [R0]
370A8A:  LDR             R1, [R1,#0x2C]
370A8C:  BLX             R1
370A8E:  MOV             R3, R0; int
370A90:  CBZ             R3, loc_370B00
370A92:  LDRB.W          R0, [R3,#0x3A]
370A96:  AND.W           R0, R0, #7
370A9A:  CMP             R0, #3
370A9C:  BNE             loc_370AC6
370A9E:  LDR.W           R12, =(g_ikChainMan_ptr - 0x370AB8)
370AA2:  MOVS            R1, #0
370AA4:  MOV.W           R2, #0x3E800000
370AA8:  MOVS            R5, #1
370AAA:  MOVS            R6, #5
370AAC:  MOV.W           R0, #0x7D0
370AB0:  STRD.W          R0, R6, [SP,#0x30+var_30]
370AB4:  ADD             R12, PC; g_ikChainMan_ptr
370AB6:  STRD.W          R1, R5, [SP,#0x30+var_28]
370ABA:  MOV.W           LR, #3
370ABE:  MOV.W           R8, #0x1F4
370AC2:  STR             R2, [SP,#0x30+var_20]
370AC4:  B               loc_370AEE
370AC6:  LDR.W           R12, =(g_ikChainMan_ptr - 0x370AD8)
370ACA:  MOVS            R1, #0
370ACC:  MOV.W           LR, #3
370AD0:  MOV.W           R8, #0x1F4
370AD4:  ADD             R12, PC; g_ikChainMan_ptr
370AD6:  MOV.W           R5, #0x3E800000
370ADA:  MOVS            R0, #1
370ADC:  MOV.W           R2, #0xFFFFFFFF
370AE0:  MOV.W           R6, #0x7D0
370AE4:  STRD.W          R6, R2, [SP,#0x30+var_30]; int
370AE8:  STRD.W          R1, R0, [SP,#0x30+var_28]; int
370AEC:  STR             R5, [SP,#0x30+var_20]; float
370AEE:  LDR.W           R0, [R12]; g_ikChainMan ; int
370AF2:  MOV             R2, R4; CPed *
370AF4:  STRD.W          R8, LR, [SP,#0x30+var_1C]; int
370AF8:  STR             R1, [SP,#0x30+var_14]; int
370AFA:  ADR             R1, aCeventeditable; "CEventEditableResponse"
370AFC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
370B00:  MOVS            R0, #1
370B02:  ADD             SP, SP, #0x20 ; ' '
370B04:  POP.W           {R8}
370B08:  POP             {R4-R7,PC}
