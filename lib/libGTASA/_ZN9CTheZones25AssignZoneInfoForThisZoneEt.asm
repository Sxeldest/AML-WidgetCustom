; =========================================================
; Game Engine Function: _ZN9CTheZones25AssignZoneInfoForThisZoneEt
; Address            : 0x42D828 - 0x42D8BE
; =========================================================

42D828:  PUSH            {R4-R7,LR}
42D82A:  ADD             R7, SP, #0xC
42D82C:  PUSH.W          {R11}
42D830:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D838)
42D832:  LDR             R1, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42D83A)
42D834:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D836:  ADD             R1, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42D838:  LDR             R2, [R2]; CTheZones::NavigationZoneArray ...
42D83A:  LDR             R1, [R1]; CTheZones::TotalNumberOfNavigationZones ...
42D83C:  ADD.W           R12, R2, R0,LSL#5
42D840:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D846)
42D842:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D844:  LDRH            R3, [R1]; CTheZones::TotalNumberOfNavigationZones
42D846:  MOVS            R1, #0
42D848:  LDR.W           LR, [R2]; CTheZones::NavigationZoneArray ...
42D84C:  MOVS            R2, #0
42D84E:  B               loc_42D872
42D850:  LSLS            R6, R4, #5
42D852:  ADD.W           R4, LR, R4,LSL#5
42D856:  LDRD.W          R2, R5, [R12]
42D85A:  LDR             R4, [R4,#4]
42D85C:  LDR.W           R6, [LR,R6]
42D860:  EORS            R4, R5
42D862:  EORS            R2, R6
42D864:  ORRS            R4, R2
42D866:  MOV.W           R2, #0
42D86A:  ITE EQ
42D86C:  MOVEQ           R2, #1
42D86E:  MOVNE           R4, #1
42D870:  ADD             R1, R4
42D872:  LSLS            R2, R2, #0x18
42D874:  BNE             loc_42D884
42D876:  UXTH            R4, R1
42D878:  CMP             R4, R3
42D87A:  BCS             loc_42D884
42D87C:  MOVS            R2, #0
42D87E:  CMP             R4, R0
42D880:  BEQ             loc_42D872
42D882:  B               loc_42D850
42D884:  CBZ             R2, loc_42D8A0
42D886:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D88E)
42D888:  UXTH            R1, R1
42D88A:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D88C:  LDR             R2, [R2]; CTheZones::NavigationZoneArray ...
42D88E:  ADD.W           R1, R2, R1,LSL#5
42D892:  ADD.W           R0, R2, R0,LSL#5
42D896:  LDRH            R1, [R1,#0x1C]
42D898:  STRH            R1, [R0,#0x1C]
42D89A:  POP.W           {R11}
42D89E:  POP             {R4-R7,PC}
42D8A0:  LDR             R1, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x42D8A8)
42D8A2:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D8AA)
42D8A4:  ADD             R1, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
42D8A6:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D8A8:  LDR             R1, [R1]; CTheZones::TotalNumberOfZoneInfos ...
42D8AA:  LDR             R2, [R2]; CTheZones::NavigationZoneArray ...
42D8AC:  LDRH            R3, [R1]; CTheZones::TotalNumberOfZoneInfos
42D8AE:  ADD.W           R0, R2, R0,LSL#5
42D8B2:  STRH            R3, [R0,#0x1C]
42D8B4:  ADDS            R0, R3, #1
42D8B6:  STRH            R0, [R1]; CTheZones::TotalNumberOfZoneInfos
42D8B8:  POP.W           {R11}
42D8BC:  POP             {R4-R7,PC}
