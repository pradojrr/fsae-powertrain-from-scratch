# Formula SAE Electric Powertrain from Scratch 🏎️⚡

Bem-vindo ao repositório oficial da série **Powertrain from Scratch**. Este projeto documenta a construção passo a passo de um sistema de tração elétrica de alta performance para um protótipo de Formula SAE, desenvolvido inteiramente do zero utilizando **MATLAB e Simulink**.

A missão deste repositório é fechar a lacuna entre a teoria acadêmica de máquinas elétricas e a aplicação prática nas pistas de corrida, servindo como fundação para sistemas de *Torque Vectoring* e veículos autônomos (*Driverless*).

---

## 🛠️ Stack Tecnológico
* **Ambiente de Simulação:** MATLAB & Simulink
* **Planta Eletromecânica:** Motor Síncrono de Ímãs Permanentes (PMSM) - Emrax 228
* **Estratégia de Controle:** Field-Oriented Control (FOC)
* **Modulação:** Space Vector Pulse Width Modulation (SVPWM)

---

## 📚 Roadmap do Projeto (Episódios)

O desenvolvimento está dividido em módulos incrementais. Cada pasta contém o modelo matemático, os scripts de inicialização e a documentação dos ensaios de validação.

* [**Ep. 01 — Modulação Vetorial (SVPWM)**](./Ep01_SVPWM/)
  * Geração dos tempos de condução ativa e nula.
  * Mapeamento dos setores do hexágono de tensões.
* [**Ep. 02 — Dinâmica da Máquina PMSM (Referencial $abc$)**](./Ep02_PMSM_abc/)
  * Equações diferenciais elétricas e mecânicas acopladas.
  * Validação da Força Contraeletromotriz (FCEM) e resposta ao degrau de carga.
* **Ep. 03 — Field-Oriented Control (FOC): Malhas de Corrente** *(Em desenvolvimento)*
  * Transformadas de Clarke e Park.
  * Sintonia dos controladores PI nos eixos $d$ e $q$.
* **Ep. 04 — Malha Externa de Velocidade e Anti-Windup** *(Em breve)*
* **Ep. 05 — Integração Completa: FOC + SVPWM + Inversor** *(Em breve)*
* **Ep. 06 — Efeitos Práticos: Atraso Digital e Compensação** *(Em breve)*
* **Ep. 07 — Enfraquecimento de Campo (Field Weakening)** *(Em breve)*

---

## 🚀 Como Executar
Cada episódio é completamente isolado para garantir estabilidade. 
1. Navegue até a pasta do episódio desejado.
2. Execute o script de inicialização (`.m`) no MATLAB para carregar os parâmetros do motor no Workspace.
3. Abra o modelo `.slx` no Simulink e inicie a simulação.

---

## 🤝 Sobre o Autor
**Ronaldo Prado**  
Engenheiro em formação e apaixonado por mobilidade elétrica, controle e motorsport. Desenvolvendo tecnologia para as pistas e pesquisando algoritmos avançados para veículos de alta performance.

* 🔗 **LinkedIn:** [Acompanhe os artigos técnicos detalhados da série](https://www.linkedin.com/in/ronaldoprado/)
* 📸 **Instagram:** [@prado.engineer](https://www.instagram.com/prado.engineer) (Bastidores do desenvolvimento e "Build in Public")
