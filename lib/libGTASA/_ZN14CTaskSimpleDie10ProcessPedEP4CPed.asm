; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDie10ProcessPedEP4CPed
; Address            : 0x4EAE42 - 0x4EAF12
; =========================================================

4EAE42:  PUSH            {R4-R7,LR}
4EAE44:  ADD             R7, SP, #0xC
4EAE46:  PUSH.W          {R8}
4EAE4A:  SUB             SP, SP, #0x10
4EAE4C:  MOV             R5, R1
4EAE4E:  MOV             R4, R0
4EAE50:  LDR.W           R0, [R5,#0x534]
4EAE54:  ORR.W           R0, R0, #8
4EAE58:  STR.W           R0, [R5,#0x534]
4EAE5C:  LDRB.W          R0, [R4,#0x20]
4EAE60:  LSLS            R0, R0, #0x1F
4EAE62:  BNE             loc_4EAE6A
4EAE64:  LDR             R0, [R4,#0xC]
4EAE66:  CMP             R0, #0xBF
4EAE68:  BNE             loc_4EAEF4
4EAE6A:  LDR.W           R1, [R5,#0x490]
4EAE6E:  LDR.W           R0, [R5,#0x484]
4EAE72:  ORR.W           R1, R1, #0x20 ; ' '
4EAE76:  STR.W           R1, [R5,#0x490]
4EAE7A:  LDRB.W          R1, [R4,#0x20]
4EAE7E:  LSLS            R1, R1, #0x1E
4EAE80:  BMI             loc_4EAF08
4EAE82:  LDR             R1, [R5,#0x44]
4EAE84:  TST.W           R1, #0x100
4EAE88:  BNE             loc_4EAEB4
4EAE8A:  LSLS            R1, R1, #0x12
4EAE8C:  BMI             loc_4EAEB4
4EAE8E:  LDR             R1, [R5,#0x1C]
4EAE90:  ANDS.W          R1, R1, #1
4EAE94:  BEQ             loc_4EAEB4
4EAE96:  LSLS            R0, R0, #0x1F
4EAE98:  BEQ             loc_4EAF08
4EAE9A:  LDR.W           R0, [R5,#0x56C]
4EAE9E:  CBZ             R0, loc_4EAEB4
4EAEA0:  MOV             R0, R5; this
4EAEA2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4EAEA6:  CBNZ            R0, loc_4EAEB4
4EAEA8:  LDR.W           R0, [R5,#0x56C]
4EAEAC:  LDRB.W          R0, [R0,#0x44]
4EAEB0:  LSLS            R0, R0, #0x1D
4EAEB2:  BPL             loc_4EAF08
4EAEB4:  LDR             R0, [R4,#0xC]
4EAEB6:  MOVS            R1, #0
4EAEB8:  MOV             R8, SP
4EAEBA:  ADDW            R6, R5, #0x484
4EAEBE:  CMP             R0, #0x8C
4EAEC0:  MOV             R0, R8; this
4EAEC2:  IT EQ
4EAEC4:  MOVEQ           R1, #1; bool
4EAEC6:  BLX             j__ZN11CEventDeathC2Eb; CEventDeath::CEventDeath(bool)
4EAECA:  LDR.W           R0, [R5,#0x440]
4EAECE:  MOV             R1, R8; CEvent *
4EAED0:  MOVS            R2, #0; bool
4EAED2:  ADDS            R0, #0x68 ; 'h'; this
4EAED4:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4EAED8:  LDRB.W          R0, [R4,#0x20]
4EAEDC:  ORR.W           R0, R0, #2
4EAEE0:  STRB.W          R0, [R4,#0x20]
4EAEE4:  LDR             R0, [R6,#0xC]
4EAEE6:  BIC.W           R0, R0, #0x20 ; ' '
4EAEEA:  STR             R0, [R6,#0xC]
4EAEEC:  MOV             R0, R8; this
4EAEEE:  BLX             j__ZN6CEventD2Ev_1; CEvent::~CEvent()
4EAEF2:  B               loc_4EAF08
4EAEF4:  LDR             R0, [R4,#0x24]
4EAEF6:  CBNZ            R0, loc_4EAF08
4EAEF8:  MOV             R0, R4; this
4EAEFA:  MOV             R1, R5; CPed *
4EAEFC:  BLX             j__ZN14CTaskSimpleDie9StartAnimEP4CPed; CTaskSimpleDie::StartAnim(CPed *)
4EAF00:  MOV             R0, R5; CPed *
4EAF02:  MOVS            R1, #0x36 ; '6'
4EAF04:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EAF08:  MOVS            R0, #0
4EAF0A:  ADD             SP, SP, #0x10
4EAF0C:  POP.W           {R8}
4EAF10:  POP             {R4-R7,PC}
