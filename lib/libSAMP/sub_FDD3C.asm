; =========================================================
; Game Engine Function: sub_FDD3C
; Address            : 0xFDD3C - 0xFDD88
; =========================================================

FDD3C:  PUSH            {R4,R5,R7,LR}
FDD3E:  ADD             R7, SP, #8
FDD40:  MOV             R5, R0
FDD42:  LDR             R0, =(byte_247565 - 0xFDD4A)
FDD44:  MOV             R4, R1
FDD46:  ADD             R0, PC; byte_247565
FDD48:  LDRB            R0, [R0]
FDD4A:  CBZ             R0, loc_FDD56
FDD4C:  LDR             R0, =(byte_247564 - 0xFDD52)
FDD4E:  ADD             R0, PC; byte_247564
FDD50:  LDRB            R0, [R0]
FDD52:  CBZ             R0, loc_FDD56
FDD54:  POP             {R4,R5,R7,PC}
FDD56:  CBZ             R5, loc_FDD78
FDD58:  LDR             R0, [R5,#4]
FDD5A:  CBNZ            R0, loc_FDD68
FDD5C:  LDR             R1, =(aCcustomroadsig - 0xFDD66); "CCustomRoadsignMgr_RenderRoadsignAtomic"... ...
FDD5E:  MOVS            R0, #3; int
FDD60:  MOVS            R2, #0x4C ; 'L'
FDD62:  ADD             R1, PC; "CCustomRoadsignMgr_RenderRoadsignAtomic"...
FDD64:  BL              sub_ED4F8
FDD68:  LDR             R0, =(off_247568 - 0xFDD70)
FDD6A:  MOV             R1, R4
FDD6C:  ADD             R0, PC; off_247568
FDD6E:  LDR             R2, [R0]
FDD70:  MOV             R0, R5
FDD72:  POP.W           {R4,R5,R7,LR}
FDD76:  BX              R2
FDD78:  LDR             R1, =(aCcustomroadsig_0 - 0xFDD82); "CCustomRoadsignMgr::RenderRoadsignAtomi"... ...
FDD7A:  MOVS            R0, #3; int
FDD7C:  MOVS            R2, #0x37 ; '7'
FDD7E:  ADD             R1, PC; "CCustomRoadsignMgr::RenderRoadsignAtomi"...
FDD80:  POP.W           {R4,R5,R7,LR}
FDD84:  B.W             sub_ED4F8
