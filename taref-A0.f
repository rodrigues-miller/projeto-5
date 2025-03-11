      program main
        !Passando as variáveis que são REAL*4 por padrão para REAL*8.
        implicit real*8 (a-h,m,o-z)
        !Atribuindo o valor de pi à variável "pi".
        pi = dacos(-1.d0)
        !Chamando a subroutine do cálculo da órbita para diferentes
        !valores do intervalo de tempo "dt", e salvando os resultados
        !nos arquivos de saída.
        open(2,file='saída-1-tarefa-A0.')
        call orbita(pi,1.d0)
        close(2)
        open(2,file='saída-2-tarefa-A0.')
        call orbita(pi,0.1d0)
        close(2)
        open(2,file='saída-3-tarefa-A0.')
        call orbita(pi,0.01d0)
        close(2)
        open(2,file='saída-4-tarefa-A0.')
        call orbita(pi,0.001d0)
        close(2)
        open(2,file='saída-5-tarefa-A0.')
        call orbita(pi,0.0001d0)
        close(2)
        open(2,file='saída-6-tarefa-A0.')
        call orbita(pi,0.00001d0)
        close(2)
        open(2,file='saída-7-tarefa-A0.')
        call orbita(pi,0.000001d0)
        close(2)
        open(2,file='saída-8-tarefa-A0.')
        call orbita(pi,0.0000001d0)
        close(2)
        open(2,file='saída-9-tarefa-A0.')
        call orbita(pi,0.00000001d0)
        close(2)
      end program main
!-----------------------------------------------------------------------
      !Definindo a subroutine que calculará a órbita do planeta Terra em
      !torno do Sol para diferentes valores de dt.
      subroutine orbita(pi,dt)
        !Passando as variáveis que são REAL*4 por padrão para REAL*8.
        implicit real*8 (a-h,m,o-z)
        !Passando os valores para que G*Ms seja igual a 4*pi².
        g = 1.d0
        ms = 4*pi**2
        !Definindo a posição inicial do planeta Terra, que é uma unidade
        !astronômica no eixo x.
        x_1t = 1.d0
        y_1t = 0.d0
        !Definindo a velocidade inicial do planeta Terra, que é 2*pi
        !radianos por ano, na direção y.
        vxt = 0.d0
        vyt = 2*pi
        !Definindo a posição do Sol.
        xs = 0.d0
        ys = 0.d0
        !Iniciando o loop que utiliza o método de Verlet para o cálculo
        !da órbita do planeta, utilizando o método de Euler apenas no
        !primeiro passo.
        do i = 1,1000000
          !Definindo a condição para usar o método de Verlet ou o método
          !de Euler.
          if (i==1) then
            xt=x_1t+vxt*dt
            yt=y_1t+vyt*dt
          else
            x1t=verlet(pi,g,dt,ms,x_1t,xt,xs,yt,ys)
            y1t=verlet(pi,g,dt,ms,y_1t,yt,ys,xt,xs)
            x_1t = xt
            xt = x1t
            y_1t = yt
            yt = y1t
          end if
          !Escrevendo no arquivo de saída a posição do planeta.
          write(2,*) x_1t, y_1t
        end do
      end subroutine orbita
!-----------------------------------------------------------------------
      !Definindo a função que possui o método de Verlet que será
      !utilizado no método de Verlet.
      function verlet(pi,g,dt,ms,qa_1,qa,qb,ra,rb)
        implicit real*8 (a-h,m,o-z)
        verlet=2*qa-qa_1+aceleracao(pi,g,ms,qa,qb,ra,rb)*dt**2
      end function verlet
!-----------------------------------------------------------------------
      !Definindo a função que calculará a aceleração do planeta em cada
      !instante, aceleração essa que será utilizada no método de Verlet.
      function aceleracao(pi,g,ms,qa,qb,ra,rb)
        !Passando as variáveis que são REAL*4 por padrão para REAL*8.
        implicit real*8 (a-h,m,o-z)
        aceleracao = -g*ms*(qa-qb)/((qa-qb)**2+
     &(ra-rb)**2)**(3/2.d0)
      end function aceleracao
