clc; clear; close all;

%% 1. Parâmetros Reais do Motor EMRAX 208 (HV LC)
P     = 10;            % Número de pares de polos
Rs    = 25.68e-3;      % Resistência do estator por fase (Ohms)
Ld    = 220e-6;        % Indutância do eixo d (Henry)
Lq    = 230e-6;        % Indutância do eixo q (Henry)
L     = (Ld + Lq) / 2; % Indutância equivalente de fase média (Henry)
phi_m = 0.05867;       % Fluxo magnético dos ímãs permanentes (Wb ou V.s)

%% 2. Parâmetros Mecânicos do Conjunto Rotor + Trem de Força
J = 0.0239;            % Momento de inércia do rotor (kg.m^2)
D = 5e-5;              % Coeficiente de atrito viscoso (N.m.s/rad)

%% 3. Condições de Teste / Entradas de Tensão
% Se for testar em Malha Aberta (senoidal direta):
V_pico     = 48;       % Tensão de pico por fase aplicada (V)
f_eletrica = 100;      % Frequência elétrica da rede de teste (Hz)
w_eletrica = 2 * pi * f_eletrica; % Velocidade angular elétrica (rad/s)

TL_step    = 20;       % Torque de carga (Nm) - compatível com o porte do EMRAX

%% 4. Ganhos dos Controladores PI (Sintonizados para a dinâmica do EMRAX)
% Malhas de Corrente (Eixos d e q)
Kp_i = 1.5;            % Ganho proporcional de corrente
Ki_i = 150.0;          % Ganho integral de corrente 

% Malha de Velocidade
Kp_w = 2.0;            % Ganho proporcional de velocidade
Ki_w = 10.0;           % Ganho integral de velocidade

