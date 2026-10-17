clc; clear; close all;

%% 1. Parâmetros Reais do Motor EMRAX 208 (HV LC)
P     = 10;            % Número de pares de polos[cite: 7, 8, 14]
Rs    = 25.68e-3;      % Resistência do estator por fase (Ohms)[cite: 6, 13]
Ld    = 220e-6;        % Indutância do eixo d (Henry)
Lq    = 230e-6;        % Indutância do eixo q (Henry)
L     = (Ld + Lq) / 2; % Indutância equivalente de fase média (Henry)[cite: 6, 13]
phi_m = 0.05867;       % Fluxo magnético dos ímãs permanentes (Wb ou V.s)[cite: 7, 8, 14]

%% 2. Parâmetros Mecânicos do Conjunto Rotor + Trem de Força
J = 0.0239;            % Momento de inércia do rotor (kg.m^2)[cite: 7, 13]
D = 5e-5;              % Coeficiente de atrito viscoso (N.m.s/rad)[cite: 7, 13]

%% 3. Condições de Teste / Entradas de Tensão
% Se for testar em Malha Aberta (senoidal direta):
V_pico     = 48;       % Tensão de pico por fase aplicada (V)
f_eletrica = 100;      % Frequência elétrica da rede de teste (Hz)
w_eletrica = 2 * pi * f_eletrica; % Velocidade angular elétrica (rad/s)
TL_step    = 20;       % Torque de carga (Nm) - compatível com o porte do EMRAX[cite: 7, 13]