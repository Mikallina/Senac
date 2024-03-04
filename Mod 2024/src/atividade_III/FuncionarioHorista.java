package atividade_III;

class FuncionarioHorista extends Funcionario {
	
	
    private double horasTrabalhadas;
    private double valorHora;

    public FuncionarioHorista(String nome, String cpf, String endereco, String telefone, String setor, double horasTrabalhadas, double valorHora) {
        super(nome, cpf, endereco, telefone, setor);
        this.horasTrabalhadas = horasTrabalhadas;
        this.valorHora = valorHora;
    }

    @Override
    public void aplicarAumento(double percentual) {
        double aumento = this.valorHora * (percentual / 100);
        this.valorHora += aumento;
    }

    @Override
    public double calcularPagamento() {
        return valorHora * horasTrabalhadas;
    }
    
 
}