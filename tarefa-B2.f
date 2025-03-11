      program main
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de pi a pi.
        pi = dacos(-1.d0)
        !Atribuindo o valor de 4*pi**2 a g. Constante gravitacional.
        g = 4*pi**2
        !Atribuindo o valor de incremento de tempo que será utilizado em
        !dt
        dt = 0.00001d0
        !Atribuindo o valor da massa solar, que no caso de g ser igual a
        !4*pi**2, ms é igual a 1.
        ms = 1.d0
        !mt é o valor da massa da Terra.
        mt = 1/(3*10**5)
        !vxt é o valor da componente x da velocidade inicial da Terra.
        vxt = 0.d0
        !vyt é o valor da componente y da velocidade inicial da Terra.
        vyt = 2*pi
        !vxj é o valor da componente x da velocidade inicial de Júpiter.
        vxj = 0.d0
        !vyj é o valo da componente y da velocidade inicial de Júpiter.
        vyj = dsqrt(4*pi**2/5.2)
        !vxs é o valor da componente x da velocidade inical do Sol.
        vxs = 0.d0
        !vys é o valor da componente y da velocidade inicial do Sol.
        vys = 0.d0
        !mj é o valor da massa de Júpiter.
        mj = 0.001d0
        !Atribuindo o valor inicial da distância dos planetas em
        !relação ao ponto (0,0) em cada componente, sendo x para a 
        !componente x e y para a componente y. A última letra é 
        !referente ao astro, sendo t a Terra, j Júpiter e s o Sol.
        x_1t = 1.d0
        y_1t = 0.d0
        x_1j = 5.2d0
        y_1j = 0.d0
        x_1s = 0.d0
        y_1s = 0.d0
        !Abrindo os arquivos na saída na onde serão salvos os dados das
        !posiçõs dos astros em cada instante de tempo.
        open(2,file='saída-1-tarefa-B2.')
        open(3,file='saída-2-tarefa-B2.')
        open(4,file='saída-3-tarefa-B2.')
        open(5,file='saída-4-tarefa-B2.')
        !Chamando a subroutine que calculará a orbita dos planetas,
        !Terra e Júpiter, para o sol fixo no ponto (0,0). Para Júpiter
        !com 100 vezes a sua massa.
        call orbitasolfixo(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,100*mj)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        close(4)
        close(5)
        !Atribuindo o valor inicial da distância dos planetas em
        !relação ao ponto (0,0) em cada componente, sendo x para a 
        !componente x e y para a componente y. A última letra é 
        !referente ao astro, sendo t a Terra, j Júpiter e s o Sol.
        x_1t = 1.d0
        y_1t = 0.d0
        x_1j = 5.2d0
        y_1j = 0.d0
        x_1s = 0.d0
        y_1s = 0.d0
        !Abrindo os arquivos na saída na onde serão salvos os dados das
        !posiçõs dos astros em cada instante de tempo.
        open(2,file='saída-5-tarefa-B2.')
        open(3,file='saída-6-tarefa-B2.')
        open(4,file='saída-7-tarefa-B2.')
        open(5,file='saída-8-tarefa-B2.')
        !Chamando a subroutine que calculará a orbita dos planetas,
        !terra e Júpiter, para o sol fixo no ponto (0,0). Para Júpiter
        !com 1000 vezes a sua massa.
        call orbitasolfixo(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,1000*mj)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        close(4)
        close(5)
        !Atribuindo o valor inicial da distância dos planetas em
        !relação ao ponto (0,0) em cada componente, sendo x para a 
        !componente x e y para a componente y. A última letra é 
        !referente ao astro, sendo t a Terra, j Júpiter e s o Sol.
        x_1t = 1.d0
        y_1t = 0.d0
        x_1j = 5.2d0
        y_1j = 0.d0
        x_1s = 0.d0
        y_1s = 0.d0
        !Abrindo os arquivos na saída na onde serão salvos os dados das
        !posiçõs dos astros em cada instante de tempo.
        open(2,file='saída-9-tarefa-B2.')
        open(3,file='saída-10-tarefa-B2.')
        open(4,file='saída-11-tarefa-B2.')
        open(5,file='saída-12-tarefa-B2.')
        open(6,file='saída-13-tarefa-B2.')
        !Chamando a subroutine que calculará a orbita dos astros:
        !Sol, Terra e Júpiter, sem que o sol esteja fixo (o sol também
        !está sofrendo efeitos gravitacionais dos os planetas). Para
        !Júpiter com 100 vezes a sua massa.
        call orbita(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,100*mj)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        close(4)
        close(5)
        close(6)
        !Atribuindo o valor inicial da distância dos planetas em
        !relação ao ponto (0,0) em cada componente, sendo x para a 
        !componente x e y para a componente y. A última letra é 
        !referente ao astro, sendo t a Terra, j Júpiter e s o Sol.
        x_1t = 1.d0
        y_1t = 0.d0
        x_1j = 5.2d0
        y_1j = 0.d0
        x_1s = 0.d0
        y_1s = 0.d0
        !Abrindo os arquivos na saída na onde serão salvos os dados das
        !posiçõs dos astros em cada instante de tempo.
        open(2,file='saída-14-tarefa-B2.')
        open(3,file='saída-15-tarefa-B2.')
        open(4,file='saída-16-tarefa-B2.')
        open(5,file='saída-17-tarefa-B2.')
        open(6,file='saída-18-tarefa-B2.')
        !Chamando a subroutine que calculará a orbita dos astros,
        !Sol, Terra e Júpiter, sem que o sol esteja fixo (o sol também
        !está sofrendo efeitos gravitacionais dos os planetas). Para
        !Júpiter com 1000 vezes a sua massa.
        call orbita(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,1000*mj)
        !Fechando os arquivos na onde foram salvos os dados das órbitas
        !de cada astro.
        close(2)
        close(3)
        close(4)
        close(5)
        close(6)
      end program main
!-----------------------------------------------------------------------
      !Criando a subroutine que calculará a orbita dos planetas mantendo
      !o sol fixo no centro, efeitos gravitacionais dos planetas no sol
      !são desconsiderados.
      subroutine orbitasolfixo(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,mj)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor da posição do sol ao longo do tempo compo
        !fixa e igual a posição inicial, componente x e y.
        xs = x_1s
        ys = y_1s
        !Criando o looping que irá fazer o cálculo da órbita dos
        !planetas adicionando incrementos de tempo dt, e calculando a
        !posição de cada planeta naquele instante pelo método de Verlet.
        do i = 1,2000000
          !Condição para utilizar o método de Euler na primeira iteração
          !do looping.
          if (i==1) then
            !Calculando a orbtida da Terra
            xt=x_1t+vxt*dt
            yt=y_1t+vyt*dt
            !Calculando a orbita de Júpiter
            xj=x_1j+vxj*dt
            yj=y_1j+vyj*dt
          !Condição para utilizar o método de Verlet em todas as
          !iteraçẽos do looping com excessão apenas da primeira iteração.
          else
            !Calculando a orbita da Terra
            x1t=verlet(pi,g,dt,ms,mj,x_1t,xt,xs,xj,yt,ys,yj)
            y1t=verlet(pi,g,dt,ms,mj,y_1t,yt,ys,yj,xt,xs,xj)
            x_1t = xt
            xt = x1t
            y_1t = yt
            yt = y1t
            !Calculando a orbita de Júpiter
            x1j=verlet(pi,g,dt,ms,mt,x_1j,xj,xs,xt,yj,ys,yt)
            y1j=verlet(pi,g,dt,ms,mt,y_1j,yj,ys,yt,xj,xs,xt)
            x_1j = xj
            xj = x1j
            y_1j = yj
            yj = y1j
          end if
          !Imprimindo no arquivo de saída a posição do planeta Terra
          !para dado valor de i.
          write(2,*) x_1t, y_1t
          !Imprimindo no arquivo de saída a posição do planeta Júpiter
          !para dado valor de i.
          write(3,*) x_1j, y_1j
          !Imprimindo no arquivo de saída a posição do planeta Terra, em
          !relação ao sol, em função do tempo para verificar a 
          !periodicidade do movimento.
          write(4,*) i*dt, x_1t
          write(5,*) i*dt, y_1t
        end do
      end subroutine orbitasolfixo
!-----------------------------------------------------------------------
      !Criando a subroutine que calculará a orbita dos astros, dessa vez
      !considerando efeitos gravitacionais dos planetas no Sol, dessa
      !vez o Sol não está fixo.
      subroutine orbita(pi,g,dt,ms,mt,vxt,vyt,vxj,vyj,vxs,
     &vys,x_1t,y_1t,x_1j,y_1j,x_1s,y_1s,mj)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a velocidade do centro de massa do sistema, que no
        !caso só tem componente no eixo y.
        v = (vyj*mj+vyt*mt+vys*ms)/(mj+ms+mt)
        !Calculando a posição do centro de massa do sistema que devido
        !as condições iniciais, vale zero para o eixo y e só possui
        !componente no eixo x.
        x = (ms*x_1s+mj*x_1j+mt*x_1t)/(ms+mj+mt)
        !Criando o looping que irá fazer o cálculo da órbita dos
        !astros adicionando incrementos de tempo dt, e calculando a
        !posição de cada astro naquele instante pelo método de Verlet.
        do i = 1,2000000
          !Condição para utilizar o método de Euler na primeira iteração
          !do looping.
          if (i==1) then
            !Calculando a orbtida da Terra
            xt=x_1t+vxt*dt
            yt=y_1t+vyt*dt
            !Calculando a orbita de Júpiter
            xj=x_1j+vxj*dt
            yj=y_1j+vyj*dt
            !Calculando a orbita de Júpiter
            xs=x_1s+vxs*dt
            ys=y_1s+vys*dt
          !Condição para utilizar o método de Verlet em todas as
          !iteraçẽos do looping com excessão apenas da primeira iteração.
          else
            !Calculando a orbita da Terra
            x1t=verlet(pi,g,dt,ms,mj,x_1t,xt,xs,xj,yt,ys,yj)
            y1t=verlet(pi,g,dt,ms,mj,y_1t,yt,ys,yj,xt,xs,xj)
            x_1t = xt
            xt = x1t
            y_1t = yt
            yt = y1t
            !Calculando a orbita de Júpiter
            x1j=verlet(pi,g,dt,ms,mt,x_1j,xj,xs,xt,yj,ys,yt)
            y1j=verlet(pi,g,dt,ms,mt,y_1j,yj,ys,yt,xj,xs,xt)
            x_1j = xj
            xj = x1j
            y_1j = yj
            yj = y1j
            !Calculando a orbita de Sol
            x1s=verlet(pi,g,dt,mt,mj,x_1s,xs,xt,xj,ys,yt,yj)
            y1s=verlet(pi,g,dt,mt,mj,y_1s,ys,yt,yj,xs,xt,xj)
            x_1s = xs
            xs = x1s
            y_1s = ys
            ys = y1s
          end if
          !Imprimindo no arquivo de saída a posição do planeta Terra
          !para dado valor de i, tendo o centro de massa na origem.
          write(2,*) x_1t-x, y_1t-v*i*dt
          !Imprimindo no arquivo de saída a posição do planeta Júpiter
          !para dado valor de i, tendo o centro de massa na origem.
          write(3,*) x_1j-x, y_1j-v*i*dt
          !Imprimindo no arquivo de saída a posição do sol para dado
          !valor de i, tendo o centro de massa na origem.
          write(4,*) x_1s-x, y_1s-v*i*dt
          !Imprimindo no arquivo de saída a posição do planeta Terra, em
          !relação ao centro de massa do sistema, em função do tempo 
          !para verificar a periodicidade do movimento.
          write(5,*) i*dt, x_1t-x
          write(6,*) i*dt, y_1t-v*i*dt
        end do
      end subroutine orbita
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
      function verlet(pi,g,dt,mb,mc,q_1a,qa,qb,qc,ra,rb,rc)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)a
        !Inserindo o cálculo da posição do astro pelo método de Verlet
        verlet=2*qa-q_1a+aceleracao(pi,g,mb,mc,qa,qb,qc,ra,rb,rc)*dt**2
      end function verlet
!-----------------------------------------------------------------------
      !Definindo a função que calculará o valor da aceleração sentida
      !por cada astro devido a força gravitacional exercida sobre o
      !mesmo.
      function aceleracao(pi,g,mb,mc,qa,qb,qc,ra,rb,rc)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a aceleração sentida por cada astro.
        aceleracao = -g*(mb*(qa-qb)/((qa-qb)**2+
     &(ra-rb)**2)**(3/2.d0)+mc*(qa-qc)/((qa-qc)**2+
     &(ra-rc)**2)**(3/2.d0))
      end function aceleracao
