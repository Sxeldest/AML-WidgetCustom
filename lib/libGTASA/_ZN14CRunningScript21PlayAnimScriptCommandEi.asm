; =========================================================
; Game Engine Function: _ZN14CRunningScript21PlayAnimScriptCommandEi
; Address            : 0x334DC0 - 0x334F90
; =========================================================

334DC0:  PUSH            {R4-R7,LR}
334DC2:  ADD             R7, SP, #0xC
334DC4:  PUSH.W          {R8-R11}
334DC8:  SUB             SP, SP, #4
334DCA:  VPUSH           {D8}
334DCE:  SUB             SP, SP, #0x50; float
334DD0:  MOV             R9, R0
334DD2:  LDR             R0, =(__stack_chk_guard_ptr - 0x334DDC)
334DD4:  MOV             R4, R1
334DD6:  MOVS            R1, #1; __int16
334DD8:  ADD             R0, PC; __stack_chk_guard_ptr
334DDA:  MOVS            R6, #1
334DDC:  LDR             R0, [R0]; __stack_chk_guard
334DDE:  LDR             R0, [R0]
334DE0:  STR             R0, [SP,#0x78+var_2C]
334DE2:  MOV             R0, R9; this
334DE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
334DE8:  LDR             R0, =(ScriptParams_ptr - 0x334DF2)
334DEA:  ADD             R1, SP, #0x78+var_44; char *
334DEC:  MOVS            R2, #0x18; unsigned __int8
334DEE:  ADD             R0, PC; ScriptParams_ptr
334DF0:  LDR             R0, [R0]; ScriptParams
334DF2:  LDR             R5, [R0]
334DF4:  MOV             R0, R9; this
334DF6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
334DFA:  ADD             R1, SP, #0x78+var_54; char *
334DFC:  MOV             R0, R9; this
334DFE:  MOVS            R2, #0x10; unsigned __int8
334E00:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
334E04:  MOVW            R0, #0x889
334E08:  MOV.W           R11, #0
334E0C:  CMP             R4, R0
334E0E:  STR             R5, [SP,#0x78+var_58]
334E10:  BGT             loc_334E32
334E12:  MOVW            R0, #0x605
334E16:  CMP             R4, R0
334E18:  BEQ             loc_334E42
334E1A:  MOVW            R0, #0x812
334E1E:  CMP             R4, R0
334E20:  BNE             loc_334E74
334E22:  MOV             R0, R9; this
334E24:  MOVS            R1, #6; __int16
334E26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
334E2A:  MOVS            R6, #0
334E2C:  MOV.W           R11, #0
334E30:  B               loc_334E74
334E32:  MOVW            R0, #0x88A
334E36:  CMP             R4, R0
334E38:  BEQ             loc_334E52
334E3A:  MOVW            R0, #0xA1A
334E3E:  CMP             R4, R0
334E40:  BNE             loc_334E74
334E42:  MOV             R0, R9; this
334E44:  MOVS            R1, #6; __int16
334E46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
334E4A:  MOV.W           R11, #0
334E4E:  MOVS            R6, #1
334E50:  B               loc_334E74
334E52:  MOV             R0, R9; this
334E54:  MOVS            R1, #8; __int16
334E56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
334E5A:  LDR             R0, =(ScriptParams_ptr - 0x334E60)
334E5C:  ADD             R0, PC; ScriptParams_ptr
334E5E:  LDR             R0, [R0]; ScriptParams
334E60:  LDRD.W          R6, R11, [R0,#(dword_81A920 - 0x81A908)]
334E64:  CMP.W           R11, #0
334E68:  IT NE
334E6A:  MOVNE.W         R11, #1
334E6E:  CMP             R6, #0
334E70:  IT NE
334E72:  MOVNE           R6, #1
334E74:  LDR             R0, =(ScriptParams_ptr - 0x334E7C)
334E76:  STR             R6, [SP,#0x78+var_5C]
334E78:  ADD             R0, PC; ScriptParams_ptr
334E7A:  LDR             R0, [R0]; ScriptParams
334E7C:  LDR.W           R8, [R0,#(dword_81A91C - 0x81A908)]
334E80:  VLDR            S16, [R0]
334E84:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
334E86:  CBZ             R0, loc_334E92
334E88:  LDR             R0, =(ScriptParams_ptr - 0x334E8E)
334E8A:  ADD             R0, PC; ScriptParams_ptr
334E8C:  LDR             R0, [R0]; ScriptParams
334E8E:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
334E90:  B               loc_334EA6
334E92:  LDR             R0, =(ScriptParams_ptr - 0x334E9E)
334E94:  MOVS            R6, #0x10
334E96:  CMP.W           R8, #1
334E9A:  ADD             R0, PC; ScriptParams_ptr
334E9C:  LDR             R0, [R0]; ScriptParams
334E9E:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
334EA0:  BLT             loc_334EA8
334EA2:  CBNZ            R0, loc_334EA8
334EA4:  MOVS            R0, #0
334EA6:  MOVS            R6, #0x12
334EA8:  LDR             R1, =(ScriptParams_ptr - 0x334EB0)
334EAA:  LDR             R2, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x334EB2)
334EAC:  ADD             R1, PC; ScriptParams_ptr
334EAE:  ADD             R2, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
334EB0:  LDR             R1, [R1]; ScriptParams
334EB2:  LDR             R2, [R2]; CTaskSequences::ms_iActiveSequence ...
334EB4:  LDRD.W          R3, R1, [R1,#(dword_81A910 - 0x81A908)]; unsigned int
334EB8:  CMP             R3, #0
334EBA:  LDR.W           R10, [R2]; CTaskSequences::ms_iActiveSequence
334EBE:  IT NE
334EC0:  ORRNE.W         R6, R6, #0x40 ; '@'
334EC4:  CMP             R1, #0
334EC6:  IT NE
334EC8:  ORRNE.W         R6, R6, #0x80
334ECC:  CMP             R0, #0
334ECE:  MOVW            R0, #0xA1A
334ED2:  IT EQ
334ED4:  ORREQ.W         R6, R6, #8
334ED8:  CMP             R4, R0
334EDA:  MOV.W           R0, #dword_64; this
334EDE:  IT EQ
334EE0:  ORREQ.W         R6, R6, #0x400
334EE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334EE8:  MOV             R5, R0
334EEA:  MOVS            R0, #0
334EEC:  CMP.W           R8, #1
334EF0:  BLT             loc_334F10
334EF2:  CMP.W           R10, #0xFFFFFFFF
334EF6:  MOV.W           R1, #0
334EFA:  IT GT
334EFC:  MOVGT           R1, #1
334EFE:  LDR             R2, [SP,#0x78+var_5C]
334F00:  CMP             R2, #0
334F02:  MOV.W           R2, #0
334F06:  IT EQ
334F08:  MOVEQ           R2, #1
334F0A:  STR.W           R8, [SP,#0x78+var_74]
334F0E:  B               loc_334F2E
334F10:  CMP.W           R10, #0xFFFFFFFF
334F14:  MOV.W           R1, #0
334F18:  IT GT
334F1A:  MOVGT           R1, #1
334F1C:  LDR             R2, [SP,#0x78+var_5C]
334F1E:  MOV.W           R3, #0xFFFFFFFF
334F22:  CMP             R2, #0
334F24:  MOV.W           R2, #0
334F28:  IT EQ
334F2A:  MOVEQ           R2, #1
334F2C:  STR             R3, [SP,#0x78+var_74]; int
334F2E:  STRD.W          R2, R1, [SP,#0x78+var_70]; bool
334F32:  ADD             R1, SP, #0x78+var_44; char *
334F34:  ADD             R2, SP, #0x78+var_54; char *
334F36:  STRD.W          R11, R0, [SP,#0x78+var_68]; bool
334F3A:  MOV             R0, R5; this
334F3C:  MOV             R3, R6; int
334F3E:  VSTR            S16, [SP,#0x78+var_78]
334F42:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
334F46:  LDR             R6, [SP,#0x78+var_58]
334F48:  MOVW            R0, #0xA1A
334F4C:  CMP             R4, R0
334F4E:  BNE             loc_334F62
334F50:  MOVS            R0, #dword_14; this
334F52:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334F56:  MOVS            R1, #1; bool
334F58:  MOVS            R2, #4; int
334F5A:  MOV             R3, R5; CTask *
334F5C:  BLX             j__ZN35CTaskSimpleAffectSecondaryBehaviourC2EbiP5CTask; CTaskSimpleAffectSecondaryBehaviour::CTaskSimpleAffectSecondaryBehaviour(bool,int,CTask *)
334F60:  MOV             R5, R0
334F62:  MOV             R0, R9; this
334F64:  MOV             R1, R6; int
334F66:  MOV             R2, R5; CTask *
334F68:  MOV             R3, R4; int
334F6A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
334F6E:  LDR             R0, =(__stack_chk_guard_ptr - 0x334F76)
334F70:  LDR             R1, [SP,#0x78+var_2C]
334F72:  ADD             R0, PC; __stack_chk_guard_ptr
334F74:  LDR             R0, [R0]; __stack_chk_guard
334F76:  LDR             R0, [R0]
334F78:  SUBS            R0, R0, R1
334F7A:  ITTTT EQ
334F7C:  ADDEQ           SP, SP, #0x50 ; 'P'
334F7E:  VPOPEQ          {D8}
334F82:  ADDEQ           SP, SP, #4
334F84:  POPEQ.W         {R8-R11}
334F88:  IT EQ
334F8A:  POPEQ           {R4-R7,PC}
334F8C:  BLX             __stack_chk_fail
