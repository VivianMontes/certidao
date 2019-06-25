pragma solidity 0.5.9;

contract CertidaoDeNascimento {

    address declarante;
    string public nomeDoNeonato;   
    string public Matricula;
    string public nomeDoPai;
    string public nomeDaMae;
    string public localDoNascimento;
    string public avosPaternos;
    string public avosMaternos;
    uint public dataHoraDeNascimento;
    uint public peso;
    bool public temGemeo;
    address public oficialDeRegistroDePessoasNaturais;
    
    
    constructor() public {
         nomeDoNeonato="Bebê";
         Matricula="2000 30156 286749 00003456789";
         nomeDoPai = "Papai";
         nomeDaMae = "Mamae";
         localDoNascimento = "HospitalDosBebesSaoPaulo";
         avosPaternos = "Joao e Joana";
         avosMaternos = "Mario e Maria";
         declarante = msg.sender;
         dataHoraDeNascimento = 960589800;
         peso = 2700;
         temGemeo = false;
    }      
    
    function douFe() 
        public
        returns(bool)
    {
        require(msg.sender != declarante, "O oficial nao pode ser o declarante");
        oficialDeRegistroDePessoasNaturais = msg.sender;
    }
}    
    
