; =========================================================
; Game Engine Function: _ZN5CTextD2Ev
; Address            : 0x54E204 - 0x54E246
; =========================================================

54E204:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CText::~CText()'
54E206:  ADD             R7, SP, #8
54E208:  MOV             R4, R0
54E20A:  LDR             R0, [R4,#0x18]; void *
54E20C:  CBZ             R0, loc_54E216
54E20E:  BLX             _ZdaPv; operator delete[](void *)
54E212:  MOVS            R0, #0
54E214:  STR             R0, [R4,#0x18]
54E216:  LDR             R0, [R4,#0x10]; void *
54E218:  MOVS            R5, #0
54E21A:  STR             R5, [R4,#0x1C]
54E21C:  CBZ             R0, loc_54E224
54E21E:  BLX             _ZdaPv; operator delete[](void *)
54E222:  STR             R5, [R4,#0x10]
54E224:  LDR             R0, [R4,#8]; void *
54E226:  STR             R5, [R4,#0x14]
54E228:  CBZ             R0, loc_54E232
54E22A:  BLX             _ZdaPv; operator delete[](void *)
54E22E:  MOVS            R0, #0
54E230:  STR             R0, [R4,#8]
54E232:  LDR             R0, [R4]; void *
54E234:  MOVS            R5, #0
54E236:  STR             R5, [R4,#0xC]
54E238:  CBZ             R0, loc_54E240
54E23A:  BLX             _ZdaPv; operator delete[](void *)
54E23E:  STR             R5, [R4]
54E240:  MOV             R0, R4
54E242:  STR             R5, [R4,#4]
54E244:  POP             {R4,R5,R7,PC}
