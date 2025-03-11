      program main
        !Transformando todas variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo a m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de pi à variável "pi".
        pi = dacos(-1d0)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Mercúrio.
        x_1me = 0.39d0
        vyme = velocidadecircular(pi,x_1me)
        relacao1 = periodo(pi,vyme,x_1me)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Vênus.
        x_1v = 0.72d0
        vyv = velocidadecircular(pi,x_1v)
        relacao2 = periodo(pi,vyv,x_1v)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Terra.
        x_1t = 1.d0
        vyt = velocidadecircular(pi,x_1t)
        relacao3 = periodo(pi,vyt,x_1t)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Marte.
        x_1ma = 1.52d0
        vyma = velocidadecircular(pi,x_1ma)
        relacao4 = periodo(pi,vyma,x_1ma)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Júpiter.
        x_1j = 5.2d0
        vyj = velocidadecircular(pi,x_1j)
        relacao5 = periodo(pi,vyj,x_1j)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Saturno.
        x_1sa = 9.24d0
        vysa = velocidadecircular(pi,x_1sa)
        relacao6 = periodo(pi,vysa,x_1sa)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Urano.
        x_1u = 19.19d0
        vyu = velocidadecircular(pi,x_1u)
        relacao7 = periodo(pi,vyu,x_1u)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Netuno.
        x_1n = 30.06d0
        vyn = velocidadecircular(pi,x_1n)
        relacao8 = periodo(pi,vyn,x_1n)
        !Atribuibuindo o valor inicial da distância do planeta em
        !relação ao ponto (0,0), sendo que o planeta inicia apenas com
        !componente x, chamando a função que irá calcular qual
        !seria a velocidade inicial para que o planeta tivesse uma
        !orbita circular e chamando a função que calcula o período do
        !planeta e devolve a relação (T^2)/(R^3). Plutão.
        x_1pl = 39.53d0
        vyp = velocidadecircular(pi,x_1pl)
        relacao9 = periodo(pi,vyp,x_1pl)
        !Abrindo o arquivo que armazenará os dados desejados.
        open(2,file='saida-1-tarefa-A1.')
        !Imprimindo os dados no formato de tabela.
        write(2,300)
        write(2,400)
        write(2,300) 
        write(2,100) vyme,vyv,vyt,vyma,vyj,vysa,vyu,vyn,vyp
        write(2,300) 
        write(2,200) relacao1,relacao2,relacao3,relacao4,relacao5,
     &relacao6,relacao7,relacao8,relacao9
        write(2,300)
        !Fechando o arquivo que contém os dados desejados.
        close(2)
        !Definindo os formatos de impressão desejados.
100     format('|Velocidade |',9(f8.3,'|'))
200     format('|T²/R³      |',9(f8.3,'|'))
300     format('--------------------------------------------------------
     &--------------------------------------')
400     format('|           |Mercúrio|Vênus   |Terra   |Marte   |Júpi
     &ter |Saturno |Urano   |Netuno  |Plutão  |')
      end program main
!-----------------------------------------------------------------------
      !Função que irá calcular qual a valocidade inical na direção y
      !um planeta deve ter para ter uma orbita circular dada a sua
      !posição inicial da forma (x,0).
      function velocidadecircular(pi,a)
        !Definindo todos os valores de reais como valores reais com
        !reais*8, e definindo a m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de 4*pi**2 a g. Constante gravitacional.
        g = 1.d0
        !Atribuindo o valor de incremento de tempo que será utilizado,
        !em dt
        dt = 0.0001d0
        !Atribuindo o valor da massa solar, que no caso de g ser igual a
        !4*pi**2, ms é igual a 1.
        ms = 4*pi**2
        !vxp é o valor da componente x da velocidade inical da Terra.
        vxp = 0.d0
        !vyp é valor da componente y da velocidade inical da Terra.
        vyp = 1.d0
        !h é o incremento ou decremento de velocidade, para se ajustar a
        !velocidade que faz com que o planeta tenha uma orbita circular.
        h = 1.d0
        !Iniciando o looping que irá calcular a velocidade necessária
        !para que o planeta tenha uma orbita circular.
        do j = 1, 1000000
        !Atribuindo os valores da posição incial do planeta.
        x_1p = a
        y_1p = 0.d0
        !Atribuindo os valores da posição inical do sol.
        xs = 0.d0
        ys = 0.d0
        !Iniciando o looping que calculará o valor de b, sendo 'a' o
        !valor do raio da elipse referente ao eixo x e 'b' o valor do
        !raio da elipse referente ao eixo y.
          do i = 1,50000000
            !Condição para utilizar o método de Euler no cálculo da nova
            !posição do planeta.
            if (i==1) then
              xp=x_1p+vxp*dt
              yp=y_1p+vyp*dt
            !Condição para utilizar o método de Verlet no cálculo da
            !nova posição do planeta.
            else
              x1p=verlet(pi,g,dt,ms,x_1p,xp,xs,yp,ys)
              y1p=verlet(pi,g,dt,ms,y_1p,yp,ys,xp,xs)
              x_1p = xp
              xp = x1p
              y_1p = yp
              yp = y1p
            end if
            !Condição para se obter o valor de b, é o ponto em que x
            !está mais próximo do 0, então o valor de y é muito próximo
            !do máximo.
            if (x_1p*xp<=0) then
              b = y_1p
              !O programa encerrará o looping após obter o valor de b.
              exit
            end if
          end do
          !Verificando se o raio 'a' e o raio 'b' da elipse estão
          !suficientemente próximos para tal velocidade.
          if (abs(a-b)<0.0001d0) then
            !Caso os raios estejam suficinetemente próximos imprimir na
            !tela o valor da velocidade inicial utilizada e sair do
            !looping.
            velocidadecircular = vyp
            return
          end if
          !Caso b seja menor que a, temos que aumentar a velocidade
          !incial do planeta.
          if (b<a) then
            vyp=vyp+h
          !Caso b seja maior do que a, temos que diminuir a velocidade
          !inical do planeta.
          else if (b>a) then
            !Diminuindo o tamanho do incremento h, para aumenta a
            !precisão.
            h = h/2.d0
            vyp=vyp-h
          end if
        end do
      end function velocidadecircular
!-----------------------------------------------------------------------
      !Função que irá calcular o período da órbita do planeta e
      !então calcular a relação (T^2)/(R^3), sendo T o período da órbita
      !e R o raio da mesma.
      function periodo(pi,vyp,x_1p)
        !Definindo todos os valores de reais como valores reais com
        !reais*8, e definindo a m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de 4*pi**2 a g. Constante gravitacional.
        g = 1.d0
        !Atribuindo o valor de incremento de tempo que será utilizado,
        !em dt
        dt = 0.0001d0
        !Atribuindo o valor da massa solar, que no caso de g ser igual a
        !4*pi**2, ms é igual a 1.
        ms = 4*pi**2
        !vxp é o valor da componente x da velocidade inical da Terra.
        vxp = 0.d0
        !Atribuindo o valor incial da componente y da posição inical do
        !planeta.
        y_1p = 0.d0
        !Atribuindo os valores da posição do sol
        xs = 0.d0
        ys = 0.d0
        !Atribuindo o valor de a, na onde 'a' é o raio da orbita. 'a' é
        !o mesmo que R.
        a = x_1p
        !Iniciando o looping que irá calcular o período de órbita do
        !planeta.
        do i = 1,5000000
          !Condição para utilizar o método de Euler no cálculo da
          !posição do planeta.
          if (i==1) then
            xp=x_1p+vxp*dt
            yp=y_1p+vyp*dt
          !Condição para utilizar o método de Verlet no cálculo da
          !posição do planeta.
          else
            x1p=verlet(pi,g,dt,ms,x_1p,xp,xs,yp,ys)
            y1p=verlet(pi,g,dt,ms,y_1p,yp,ys,xp,xs)
            x_1p = xp
            xp = x1p
            y_1p = yp
            yp = y1p
          end if
          !Condição para se obter meio período da orbita.
          if (y_1p*yp<0) then
            !Calculando o período t.
            t = 2*i*dt
            !Imprimindo no arquivo os valores desejados.
            !write(*,*) t
            periodo = (t**2)/(a**3)
            return
          end if
        end do
      end function periodo
!-----------------------------------------------------------------------
      !Defininco a função que calculará a posição de cada astro pelo
      !método de Verlet.
      !mb é o valor da massa do astro b.
      !mc é o valor da massa do astro c.
      !q_1a é a coordenada generalizada do valor da posição anterior do 
      !astro em que está sendo calculado o valor da nova posição.
      !qa é a coordenada generalizada do valor da posição do astro em 
      !que está sendo calculado o valor da nova posição.
      !qb e qc segue o raciocínio do astro a só que para o astro b.
      !ra, rb e rc é o segundo valor da coordenada generalizada que
      !completa a infomação da posição dos astros no plano.
      function verlet(pi,g,dt,ms,q_1a,qa,qb,ra,rb)
        !Definindo todos os valores de reais como valores reais com
        !reais*8, e definindo a m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Inserindo o cálculo da posição do astro pelo método de Verlet.
        verlet=2*qa-q_1a+aceleracao(pi,g,ms,qa,qb,ra,rb)*dt**2
      end function verlet
!-----------------------------------------------------------------------
      function aceleracao(pi,g,ms,qa,qb,ra,rb)
        !Definindo todos os valores de reais como valores reais com
        !reais*8, e definindo a m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a aceleração sentida por cada astro.
        aceleracao = -g*ms*(qa-qb)/((qa-qb)**2+
     &(ra-rb)**2)**(3/2.d0)
      end function aceleracao
