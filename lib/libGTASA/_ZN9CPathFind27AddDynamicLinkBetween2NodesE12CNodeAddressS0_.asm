; =========================================================
; Game Engine Function: _ZN9CPathFind27AddDynamicLinkBetween2NodesE12CNodeAddressS0_
; Address            : 0x31ACE4 - 0x31AD06
; =========================================================

31ACE4:  PUSH            {R4-R7,LR}
31ACE6:  ADD             R7, SP, #0xC
31ACE8:  PUSH.W          {R11}
31ACEC:  MOV             R4, R2
31ACEE:  MOV             R5, R1
31ACF0:  MOV             R6, R0
31ACF2:  BLX             j__ZN9CPathFind36AddDynamicLinkBetween2Nodes_For1NodeE12CNodeAddressS0_; CPathFind::AddDynamicLinkBetween2Nodes_For1Node(CNodeAddress,CNodeAddress)
31ACF6:  MOV             R0, R6
31ACF8:  MOV             R1, R4
31ACFA:  MOV             R2, R5
31ACFC:  POP.W           {R11}
31AD00:  POP.W           {R4-R7,LR}
31AD04:  B               _ZN9CPathFind36AddDynamicLinkBetween2Nodes_For1NodeE12CNodeAddressS0_; CPathFind::AddDynamicLinkBetween2Nodes_For1Node(CNodeAddress,CNodeAddress)
