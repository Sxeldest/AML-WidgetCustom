; =========================================================
; Game Engine Function: _ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff
; Address            : 0x56E8B4 - 0x56EA4C
; =========================================================

56E8B4:  PUSH            {R4-R7,LR}
56E8B6:  ADD             R7, SP, #0xC
56E8B8:  PUSH.W          {R8-R11}
56E8BC:  SUB             SP, SP, #4
56E8BE:  MOV             R4, R1
56E8C0:  MOV             R5, R0
56E8C2:  LDRB.W          R0, [R4,#0x87C]
56E8C6:  LSLS            R0, R0, #0x1B
56E8C8:  BPL             loc_56E984
56E8CA:  VMOV            S0, R3
56E8CE:  CMP             R2, #0xB
56E8D0:  BLT             loc_56E8E0
56E8D2:  MOVS            R6, #5
56E8D4:  CMP             R2, #0xF
56E8D6:  IT GT
56E8D8:  MOVGT           R6, #0
56E8DA:  ADD.W           R0, R2, #0xF5
56E8DE:  B               loc_56E910
56E8E0:  CMP             R2, #5
56E8E2:  BLT             loc_56E8F8
56E8E4:  MOVS            R6, #2
56E8E6:  CMP             R2, #6
56E8E8:  IT EQ
56E8EA:  MOVEQ           R6, #4
56E8EC:  CMP             R2, #5
56E8EE:  IT EQ
56E8F0:  MOVEQ           R6, #3
56E8F2:  ADD.W           R0, R2, #0xFB
56E8F6:  B               loc_56E910
56E8F8:  CMP             R2, #1
56E8FA:  BLT             loc_56E904
56E8FC:  ADD.W           R0, R2, #0xFF
56E900:  MOVS            R6, #1
56E902:  B               loc_56E910
56E904:  CMP             R2, #0
56E906:  BLT             loc_56E90E
56E908:  MOVS            R0, #0
56E90A:  MOVS            R6, #6
56E90C:  B               loc_56E910
56E90E:  MOVS            R0, #0xFE
56E910:  LDR             R1, =(G_aComponentDamage_ptr - 0x56E918)
56E912:  CMP             R2, #0xF
56E914:  ADD             R1, PC; G_aComponentDamage_ptr
56E916:  LDR             R1, [R1]; G_aComponentDamage
56E918:  ADD.W           R1, R1, R6,LSL#2
56E91C:  VLDR            S2, [R1]
56E920:  VMUL.F32        S0, S2, S0
56E924:  VLDR            S2, =0.6
56E928:  VMUL.F32        S2, S0, S2
56E92C:  IT EQ
56E92E:  VMOVEQ.F32      S0, S2
56E932:  VLDR            S2, =150.0
56E936:  VCMPE.F32       S0, S2
56E93A:  VMRS            APSR_nzcv, FPSCR
56E93E:  BLE             loc_56E984
56E940:  CMP             R6, #5; switch 6 cases
56E942:  BHI.W           def_56E946; jumptable 0056E946 default case
56E946:  TBB.W           [PC,R6]; switch jump
56E94A:  DCB 0x1F; jump table for switch statement
56E94B:  DCB 0x22
56E94C:  DCB 3
56E94D:  DCB 3
56E94E:  DCB 3
56E94F:  DCB 0x2B
56E950:  UXTB            R6, R0; jumptable 0056E946 cases 2-4
56E952:  CMP             R6, #5
56E954:  BHI.W           def_56E946; jumptable 0056E946 default case
56E958:  ADD             R5, R6
56E95A:  LDRB.W          R1, [R5,#9]!
56E95E:  CMP             R1, #4; switch 5 cases
56E960:  BHI             def_56E964; jumptable 0056E964 default case
56E962:  MOVS            R0, #1
56E964:  TBB.W           [PC,R1]; switch jump
56E968:  DCB 3; jump table for switch statement
56E969:  DCB 3
56E96A:  DCB 0x5F
56E96B:  DCB 0x61
56E96C:  DCB 0x6E
56E96D:  ALIGN 2
56E96E:  ADD.W           R0, R6, R6,LSL#1; jumptable 0056E964 cases 0,1
56E972:  MOVS            R1, #0; float
56E974:  ADD.W           R0, R4, R0,LSL#3
56E978:  ADDW            R0, R0, #0x5CC; this
56E97C:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
56E980:  MOVS            R1, #2
56E982:  B               def_56E964; jumptable 0056E964 default case
56E984:  MOVS            R0, #0
56E986:  B               loc_56EA44; jumptable 0056E964 case 4
56E988:  UXTB.W          R8, R0; jumptable 0056E946 case 0
56E98C:  B               loc_56E9BE
56E98E:  UXTAB.W         R0, R5, R0; jumptable 0056E946 case 1
56E992:  LDRB.W          R1, [R0,#5]!
56E996:  CMP             R1, #2
56E998:  ITT NE
56E99A:  ADDNE           R1, #1
56E99C:  STRBNE          R1, [R0]
56E99E:  B               def_56E946; jumptable 0056E946 default case
56E9A0:  UXTB.W          R8, R0; jumptable 0056E946 case 5
56E9A4:  LDR.W           R12, [R5,#0x10]
56E9A8:  MOV.W           R3, R8,LSL#1
56E9AC:  MOVS            R2, #3
56E9AE:  UXTB            R3, R3
56E9B0:  MOVS            R1, #1
56E9B2:  LSLS            R2, R3
56E9B4:  LSLS            R1, R3
56E9B6:  BIC.W           R2, R12, R2
56E9BA:  ORRS            R1, R2
56E9BC:  STR             R1, [R5,#0x10]
56E9BE:  LDR             R1, [R5,#0x14]
56E9C0:  MOV.W           R2, R8,LSL#2
56E9C4:  UXTB.W          R9, R2
56E9C8:  LSR.W           R1, R1, R9
56E9CC:  AND.W           R10, R1, #0xF
56E9D0:  CMP.W           R10, #3
56E9D4:  BEQ             def_56E946; jumptable 0056E946 default case
56E9D6:  CMP.W           R10, #2
56E9DA:  BNE             loc_56E9F4
56E9DC:  UXTB.W          R11, R0
56E9E0:  BLX             rand
56E9E4:  CMP.W           R11, #4
56E9E8:  BNE             loc_56E9F0
56E9EA:  LSLS            R0, R0, #0x1F
56E9EC:  BEQ             loc_56E9F4
56E9EE:  B               def_56E946; jumptable 0056E946 default case
56E9F0:  LSLS            R0, R0, #0x1D
56E9F2:  BNE             def_56E946; jumptable 0056E946 default case
56E9F4:  LDR             R0, [R5,#0x14]
56E9F6:  ADD.W           R1, R10, #1
56E9FA:  MOVS            R2, #0xF
56E9FC:  CMP             R6, #0
56E9FE:  LSL.W           R2, R2, R9
56EA02:  BIC.W           R0, R0, R2
56EA06:  LSL.W           R1, R1, R9
56EA0A:  ORR.W           R0, R0, R1
56EA0E:  STR             R0, [R5,#0x14]
56EA10:  MOV             R0, R4
56EA12:  MOV             R1, R8
56EA14:  MOV.W           R2, #0
56EA18:  BEQ             loc_56EA20
56EA1A:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
56EA1E:  B               def_56E946; jumptable 0056E946 default case
56EA20:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
56EA24:  B               def_56E946; jumptable 0056E946 default case
56EA26:  MOVS            R1, #3; jumptable 0056E964 case 2
56EA28:  B               def_56E964; jumptable 0056E964 default case
56EA2A:  BLX             rand; jumptable 0056E964 case 3
56EA2E:  TST.W           R0, #7
56EA32:  BNE             def_56E946; jumptable 0056E946 default case
56EA34:  MOVS            R1, #4
56EA36:  STRB            R1, [R5]; jumptable 0056E964 default case
56EA38:  MOV             R0, R4
56EA3A:  MOV             R1, R6
56EA3C:  MOVS            R2, #0
56EA3E:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
56EA42:  MOVS            R0, #1; jumptable 0056E946 default case
56EA44:  ADD             SP, SP, #4; jumptable 0056E964 case 4
56EA46:  POP.W           {R8-R11}
56EA4A:  POP             {R4-R7,PC}
