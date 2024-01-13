variable "ingress_rules" {
    default = [
        {
        
            description      = "allow all 443"
            from_port        = 443 # 0 means allows all ports
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            description      = "allow all 80"
            from_port        = 80 # 0 means allows all ports
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            description      = "allow all 22"
            from_port        = 22 # 0 means allows all ports
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }

    ]

}