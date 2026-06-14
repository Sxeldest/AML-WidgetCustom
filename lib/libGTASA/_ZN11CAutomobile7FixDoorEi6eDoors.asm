; =========================================================
; Game Engine Function: _ZN11CAutomobile7FixDoorEi6eDoors
; Address            : 0x55D63A - 0x55D6B6
; =========================================================

55D63A:  PUSH            {R4-R7,LR}
55D63C:  ADD             R7, SP, #0xC
55D63E:  PUSH.W          {R11}
55D642:  SUB             SP, SP, #0x48
55D644:  MOV             R4, R0
55D646:  MOV             R6, R2
55D648:  LDR.W           R0, [R4,#0x388]
55D64C:  MOV             R5, R1
55D64E:  LDRB.W          R0, [R0,#0xCD]
55D652:  LSLS            R0, R0, #0x1F
55D654:  BNE             loc_55D6AE
55D656:  ADD.W           R0, R6, R6,LSL#1
55D65A:  MOVS            R1, #0; float
55D65C:  ADD.W           R0, R4, R0,LSL#3
55D660:  ADDW            R0, R0, #0x5CC; this
55D664:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
55D668:  ADDW            R0, R4, #0x5B4
55D66C:  MOV             R1, R6
55D66E:  MOVS            R2, #0
55D670:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55D674:  ADD.W           R0, R4, R5,LSL#2
55D678:  LDR.W           R1, [R0,#0x65C]
55D67C:  CBZ             R1, loc_55D6AE
55D67E:  ADDW            R5, R0, #0x65C
55D682:  MOV             R0, R4
55D684:  MOVS            R2, #1
55D686:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
55D68A:  LDR             R0, [R5]
55D68C:  MOV             R4, SP
55D68E:  MOVS            R2, #0
55D690:  ADD.W           R1, R0, #0x10
55D694:  MOV             R0, R4
55D696:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55D69A:  ADD             R3, SP, #0x58+var_28
55D69C:  LDM             R3, {R1-R3}; float
55D69E:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
55D6A2:  MOV             R0, R4; this
55D6A4:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55D6A8:  MOV             R0, R4; this
55D6AA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55D6AE:  ADD             SP, SP, #0x48 ; 'H'
55D6B0:  POP.W           {R11}
55D6B4:  POP             {R4-R7,PC}
