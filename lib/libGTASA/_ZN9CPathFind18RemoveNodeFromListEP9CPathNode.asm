; =========================================================
; Game Engine Function: _ZN9CPathFind18RemoveNodeFromListEP9CPathNode
; Address            : 0x316214 - 0x316230
; =========================================================

316214:  LDRD.W          R2, R3, [R1]
316218:  STR             R2, [R3]
31621A:  LDR             R2, [R1]
31621C:  CMP             R2, #0
31621E:  ITT NE
316220:  LDRNE           R1, [R1,#4]
316222:  STRNE           R1, [R2,#4]
316224:  MOVW            R1, #0x3584
316228:  LDR             R2, [R0,R1]
31622A:  SUBS            R2, #1
31622C:  STR             R2, [R0,R1]
31622E:  BX              LR
