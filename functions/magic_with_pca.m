## Copyright (C) 2021 Andrei
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} magic_with_pca (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Andrei <Andrei@DESKTOP-PK505U9>
## Created: 2021-09-08
function [train, miu, Y, Vk] = magic_with_pca(train_mat, pcs)
  % Conversie la double
  train_mat = double(train_mat);
  
  % Calcularea mediei pe coloane si scalarea matricei initiale
  miu = mean(train_mat);
  train = train_mat - miu;
  
  % Calcularea matricei de covarianta
  cov_matrix = train' * train / (rows(train) - 1);
  
  % Calcularea vectorilor si valorilor proprii ale matricei de covarianta
  [V, S] = eig(cov_matrix);
  
  % Sortare valorilor proprii in ordine descrescatoare
  [_, order] = sort(diag(S), 'descend');
  
  % Crearea unei noi matrici V cu vectorii proprii sortati
  V = V(:, order);
  
  % Selectarea primelor pcs coloane
  Vk = V(:, 1:pcs);
  
  % Calcularea proiectiei matricei initiale in spatiul componentelor principale
  Y = train * Vk;
  
  % Calcularea aproximatiei matricei initiale folosind componentele principale
  train = Y * Vk';
endfunction 