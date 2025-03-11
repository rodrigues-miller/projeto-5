      program main
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor inicial das distâncias do asteroide I em
        !relação ao ponto (0,0) e suas respectivas componentes de
        !velocidade.
        vxa = 0.d0
        vya = 3.628d0
        x_1a = 3.d0
        y_1a = 0.d0
        !Abrindo os arquivos de saída na onde serão salvos os dados das
        !posições dos astros em cada instante de tempo.
        open(2,file='saída-1-tarefa-B3.')
        open(3,file='saída-2-tarefa-B3.')
        !Chamando a subroutine que calculará a orbita dos planetas,
        !Terra e Júpiter, para o sol fixo no ponto (0,0), para o
        !asteroide I.
        call orbitasolfixo(vxa,vya,x_1a,y_1a)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        !Atribuindo o valor inicial das distâncias do asteroide II em
        !relação ao ponto (0,0) e suas respectivas componentes de
        !velocidade.
        vxa = 0.d0
        vya = 3.471d0
        x_1a = 3.276d0
        y_1a = 0.d0
        !Abrindo os arquivos de saída na onde serão salvos os dados das
        !posições dos astros em cada instante de tempo.
        open(2,file='saída-3-tarefa-B3.')
        open(3,file='saída-4-tarefa-B3.')
        !Chamando a subroutine que calculará a orbita dos planetas,
        !Terra e Júpiter, para o sol fixo no ponto (0,0), para o
        !asteroide II.
        call orbitasolfixo(vxa,vya,x_1a,y_1a)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        !Atribuindo o valor inicial das distâncias do asteroide III em
        !relação ao ponto (0,0) e suas respectivas componentes de
        !velocidade.
        vxa = 0.d0
        vya = 3.267d0
        x_1a = 3.7d0
        y_1a = 0.d0
        !Abrindo os arquivos de saída na onde serão salvos os dados das
        !posições dos astros em cada instante de tempo.
        open(2,file='saída-5-tarefa-B3.')
        open(3,file='saída-6-tarefa-B3.')
        !Chamando a subroutine que calculará a orbita dos planetas,
        !Terra e Júpiter, para o sol fixo no ponto (0,0), para o
        !asteroide III.
        call orbitasolfixo(vxa,vya,x_1a,y_1a)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
      end program main
!-----------------------------------------------------------------------
      subroutine orbitasolfixo(vxa,vya,x_1a,y_1a)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de pi a pi.
        pi = dacos(-1.d0)
        !Atribuindo o valor de 4*pi**2 a g. Constante gravitacioanl.
        g = 4*pi**2
        !Atribuindo o valor de incremento de tempo que será utilizado em
        !dt
        dt = 0.00001d0
        !Atribuindo o valor da massa solar, que no caso de g ser igual a
        !4*pi**2, ms é igual a 1.
        ms = 1.d0
        !mj é o valor da massa de Júpiter
        mj = 0.001d0
        !vxj é o valor da componente x da velocidade inicial de Júpiter.
        vxj = 0.d0
        !vyj é o valor da componente y da velocidade inicial de Júpiter.
        vyj = 2.755d0
        !x_1j e y_1j são os valores iniciais da posição de Júpiter.
        x_1j = 5.2
        y_1j =0.d0
        !xs e ys são as posições do Sol.
        xs = 0.d0
        ys = 0.d0
        !Criando o looping que irá fazer o cálculo da órbita dos
        !astros adicionando incrementos de tempo dt, e calculando a
        !posição de cada astro naquele instante pelo método de Verlet.
        do i = 1,5000000
          !Condição para utilizar o método de Euler na primeira iterção
          !do looping.
          if (i==1) then
            !Calculando a orbita do Asteroide
            xa=x_1a+vxa*dt
            ya=y_1a+vya*dt
            !Calculando a orbita de Júpiter
            xj=x_1j+vxj*dt
            yj=y_1j+vyj*dt
            !Condição para utilizar o método de Verlet em todas as
            !iterações do looping com excessão apenas da primeira
            !iteração.
          else
            !Calculando a orbita do Asteroide
            x1a=verlet(pi,g,dt,ms,mj,x_1a,xa,xs,xj,ya,ys,yj)
            y1a=verlet(pi,g,dt,ms,mj,y_1a,ya,ys,yj,xa,xs,xj)
            x_1a = xa
            xa = x1a
            y_1a = ya
            ya = y1a
            !Calculando a orbita de Júpiter
            x1j=verlet(pi,g,dt,ms,0.d0,x_1j,xj,xs,0.d0,yj,ys,0.d0)
            y1j=verlet(pi,g,dt,ms,0.d0,y_1j,yj,ys,0.d0,xj,xs,0.d0)
            x_1j = xj
            xj = x1j
            y_1j = yj
            yj = y1j
          end if
          !Imprimindo no arquivo de saída a posição do asteroide para
          !dado valor de i.
          write(2,*) x_1a, y_1a
          !Imprimindo no arquivo de saída a posiçção do planeta Júpiter
          !para dado valor de i.
          write(3,*) x_1j, y_1j
        end do
      end subroutine orbitasolfixo
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
      function verlet(pi,g,dt,ma,mb,qa_1,qa,qb,qc,ra,rb,rc)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Inserindo o cálculo da posição do astro pelo método de Verlet
        verlet=2*qa-qa_1+aceleracao(pi,g,ma,mb,qa,qb,qc,ra,rb,rc)*dt**2
      end function verlet
!-----------------------------------------------------------------------
      !Definindo a função que calculará o valor da aceleração sentida
      !por cada astro devido a força gravitacional exercida sobre o
      !mesmo.
      function aceleracao(pi,g,ma,mb,qa,qb,qc,ra,rb,rc)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a aceleração sentida por cada astro.
        aceleracao = -g*(ma*(qa-qb)/((qa-qb)**2+
     &(ra-rb)**2)**(3/2.d0)+mb*(qa-qc)/((qa-qc)**2+
     &(ra-rc)**2)**(3/2.d0))
      end function aceleracao
