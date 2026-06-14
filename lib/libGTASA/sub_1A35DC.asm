; =========================================================
; Game Engine Function: sub_1A35DC
; Address            : 0x1A35DC - 0x1A3676
; =========================================================

1A35DC:  LDR             R0, =(EmptyNodeAddress_ptr - 0x1A35E4)
1A35DE:  LDR             R1, =(dword_7A9ED0 - 0x1A35E6)
1A35E0:  ADD             R0, PC; EmptyNodeAddress_ptr
1A35E2:  ADD             R1, PC; dword_7A9ED0
1A35E4:  LDR             R2, [R0]; EmptyNodeAddress
1A35E6:  MOVW            R0, #0xFFFF
1A35EA:  STRH            R0, [R2]
1A35EC:  MOVW            R2, #0x4E20
1A35F0:  STRH.W          R0, [R1],#4
1A35F4:  SUBS            R2, #4
1A35F6:  BNE             loc_1A35F0
1A35F8:  LDR             R1, =(NodeList_ptr - 0x1A3600)
1A35FA:  LDR             R3, =(aExteriorNodeLinkedTo_ptr - 0x1A3602)
1A35FC:  ADD             R1, PC; NodeList_ptr
1A35FE:  ADD             R3, PC; aExteriorNodeLinkedTo_ptr
1A3600:  LDR             R2, [R1]; NodeList
1A3602:  LDR             R1, [R3]; aExteriorNodeLinkedTo
1A3604:  STRH            R0, [R2,#(word_7AECF8 - 0x7AECF4)]
1A3606:  STRH            R0, [R2]
1A3608:  STRH            R0, [R2,#(word_7AECFC - 0x7AECF4)]
1A360A:  STRH            R0, [R2,#(word_7AED00 - 0x7AECF4)]
1A360C:  STRH            R0, [R2,#(word_7AED04 - 0x7AECF4)]
1A360E:  STRH            R0, [R2,#(word_7AED08 - 0x7AECF4)]
1A3610:  STRH            R0, [R2,#(word_7AED0C - 0x7AECF4)]
1A3612:  STRH            R0, [R2,#(word_7AED10 - 0x7AECF4)]
1A3614:  STRH            R0, [R2,#(word_7AED14 - 0x7AECF4)]
1A3616:  STRH            R0, [R2,#(word_7AED18 - 0x7AECF4)]
1A3618:  STRH            R0, [R2,#(word_7AED1C - 0x7AECF4)]
1A361A:  STRH            R0, [R2,#(word_7AED20 - 0x7AECF4)]
1A361C:  STRH            R0, [R2,#(word_7AED24 - 0x7AECF4)]
1A361E:  STRH            R0, [R2,#(word_7AED28 - 0x7AECF4)]
1A3620:  STRH            R0, [R2,#(word_7AED2C - 0x7AECF4)]
1A3622:  STRH            R0, [R2,#(word_7AED30 - 0x7AECF4)]
1A3624:  STRH.W          R0, [R2,#(word_7AED34 - 0x7AECF4)]
1A3628:  STRH.W          R0, [R2,#(word_7AED38 - 0x7AECF4)]
1A362C:  STRH.W          R0, [R2,#(word_7AED3C - 0x7AECF4)]
1A3630:  STRH.W          R0, [R2,#(word_7AED44 - 0x7AECF4)]
1A3634:  STRH.W          R0, [R2,#(word_7AED40 - 0x7AECF4)]
1A3638:  STRH.W          R0, [R2,#(word_7AED48 - 0x7AECF4)]
1A363C:  STRH.W          R0, [R2,#(word_7AED4C - 0x7AECF4)]
1A3640:  STRH.W          R0, [R2,#(word_7AED50 - 0x7AECF4)]
1A3644:  STRH.W          R0, [R2,#(word_7AED54 - 0x7AECF4)]
1A3648:  STRH.W          R0, [R2,#(word_7AED58 - 0x7AECF4)]
1A364C:  STRH.W          R0, [R2,#(word_7AED5C - 0x7AECF4)]
1A3650:  STRH.W          R0, [R2,#(word_7AED60 - 0x7AECF4)]
1A3654:  STRH.W          R0, [R2,#(word_7AED64 - 0x7AECF4)]
1A3658:  STRH.W          R0, [R2,#(word_7AED68 - 0x7AECF4)]
1A365C:  STRH.W          R0, [R2,#(word_7AED6C - 0x7AECF4)]
1A3660:  STRH            R0, [R1]
1A3662:  STRH            R0, [R1,#(word_7AF2FC - 0x7AF2F8)]
1A3664:  STRH            R0, [R1,#(word_7AF300 - 0x7AF2F8)]
1A3666:  STRH            R0, [R1,#(word_7AF304 - 0x7AF2F8)]
1A3668:  STRH            R0, [R1,#(word_7AF30C - 0x7AF2F8)]
1A366A:  STRH            R0, [R1,#(word_7AF308 - 0x7AF2F8)]
1A366C:  STRH            R0, [R1,#(word_7AF310 - 0x7AF2F8)]
1A366E:  STRH.W          R0, [R2,#(word_7AED70 - 0x7AECF4)]
1A3672:  STRH            R0, [R1,#(word_7AF314 - 0x7AF2F8)]
1A3674:  BX              LR
