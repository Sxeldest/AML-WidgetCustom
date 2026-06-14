; =========================================================
; Game Engine Function: _ZN8CGarages14TriggerMessageEPcsts
; Address            : 0x311E3C - 0x311EC6
; =========================================================

311E3C:  PUSH            {R4-R7,LR}
311E3E:  ADD             R7, SP, #0xC
311E40:  PUSH.W          {R8}
311E44:  MOV             R4, R0
311E46:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x311E50)
311E48:  MOV             R5, R1
311E4A:  MOV             R8, R3
311E4C:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
311E4E:  MOV             R6, R2
311E50:  LDR             R1, [R0]; char *
311E52:  MOV             R0, R4; char *
311E54:  BLX             strcmp
311E58:  CBZ             R0, loc_311E98
311E5A:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x311E62)
311E5C:  MOV             R1, R4; char *
311E5E:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
311E60:  LDR             R0, [R0]; char *
311E62:  BLX             strcpy
311E66:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x311E6C)
311E68:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
311E6A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
311E6C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
311E6E:  LDR             R1, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x311E7A)
311E70:  ADD             R6, R0
311E72:  LDR             R2, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x311E7E)
311E74:  LDR             R3, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x311E80)
311E76:  ADD             R1, PC; _ZN8CGarages14MessageEndTimeE_ptr
311E78:  LDR             R4, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x311E84)
311E7A:  ADD             R2, PC; _ZN8CGarages16MessageStartTimeE_ptr
311E7C:  ADD             R3, PC; _ZN8CGarages22MessageNumberInString2E_ptr
311E7E:  LDR             R1, [R1]; CGarages::MessageEndTime ...
311E80:  ADD             R4, PC; _ZN8CGarages21MessageNumberInStringE_ptr
311E82:  LDR             R2, [R2]; CGarages::MessageStartTime ...
311E84:  LDR             R3, [R3]; CGarages::MessageNumberInString2 ...
311E86:  LDR             R4, [R4]; CGarages::MessageNumberInString ...
311E88:  STR             R6, [R1]; CGarages::MessageEndTime
311E8A:  STR             R0, [R2]; CGarages::MessageStartTime
311E8C:  STR             R5, [R4]; CGarages::MessageNumberInString
311E8E:  STR.W           R8, [R3]; CGarages::MessageNumberInString2
311E92:  POP.W           {R8}
311E96:  POP             {R4-R7,PC}
311E98:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x311EA0)
311E9A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x311EA2)
311E9C:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
311E9E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
311EA0:  LDR             R0, [R0]; CGarages::MessageStartTime ...
311EA2:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
311EA4:  LDR             R1, [R0]; CGarages::MessageStartTime
311EA6:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds
311EA8:  CMP             R0, R1
311EAA:  BCC             loc_311E5A
311EAC:  LDR             R2, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x311EB2)
311EAE:  ADD             R2, PC; _ZN8CGarages14MessageEndTimeE_ptr
311EB0:  LDR             R2, [R2]; CGarages::MessageEndTime ...
311EB2:  LDR             R2, [R2]; CGarages::MessageEndTime
311EB4:  CMP             R0, R2
311EB6:  BHI             loc_311E5A
311EB8:  SUBS            R1, R0, R1
311EBA:  CMP.W           R1, #0x1F4
311EBE:  BLS             loc_311E92
311EC0:  SUB.W           R0, R0, #0x1F4
311EC4:  B               loc_311E6E
