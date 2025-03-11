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
        dt = 0.001d0
        !Atribuindo os valores iniciais da posição do Sol.
        x_1s = 0.d0
        y_1s = 0.d0
        !Atribuindo os valores iniciais da posição de Mercúrio.
        x_1me = 0.39*1.206d0
        y_1me = 0.d0
        !Atribuindo os valores iniciais da posição de Vênus.
        x_1v = 0.72*1.007d0
        y_1v = 0.d0
        !Atribuindo os valores iniciais da posição da Terra.
        x_1t = 1*1.017d0
        y_1t = 0.d0
        !Atribuindo os valores iniciais da posição de Marte.
        x_1ma =  1.52*1.093d0
        y_1ma = 0.d0
        !Atribuindo os valores iniciais da posição de Júpiter.
        x_1j = 5.2*1.048d0
        y_1j = 0.d0
        !Atribuindo os valores iniciais da posição de Saturno.
        x_1sa = 9.24*1.056d0
        y_1sa = 0.d0
        !Atribuindo os valores iniciais da posição de Urano.
        x_1u = 19.19*1.046d0
        y_1u = 0.d0
        !Atribuindo os valores iniciais da posição de Netuno.
        x_1n = 30.06*1.010d0
        y_1n = 0.d0
        !Atribuindo os valores iniciais da posição de Plutão.
        x_1p = 39.53*1.248d0
        y_1p = 0.d0
        !Atribuindo os valore iniciais da velocidade do Sol.
        vxs = 0.d0
        vys = 0.d0
        !Atribuindo os valore iniciais da velocidade de Mercúrio.
        vxme = 0.d0
        vyme = 8.11636459827423096d0
        !Atribuindo os valore iniciais da velocidade de Vênus.
        vxv = 0.d0
        vyv = 7.3531514406204224d0
        !Atribuindo os valore iniciais da velocidade da Terra.
        vxt = 0.d0
        vyt = 6.1772638559341431d0
        !Atribuindo os valore iniciais da velocidade de Marte.
        vxma = 0.d0
        vyma = 4.6424965858459473d0
        !Atribuindo os valore iniciais da velocidade de Júpiter.
        vxj = 0.d0
        vyj = 2.6261288449168205d0
        !Atribuindo os valore iniciais da velocidade de Saturno.
        vxsa = 0.d0
        vysa = 1.9543300531804562d0
        !Atribuindo os valore iniciais da velocidade de Urano.
        vxu = 0.d0
        vyu = 1.3697798539215000d0
        !Atribuindo os valore iniciais da velocidade de Netuno.
        vxn = 0.d0
        vyn = 1.1179875917732716d0
        !Atribuindo os valore iniciais da velocidade de Plutão.
        vxp = 0.d0
        vyp = 0.77574273654579429d0
        !Atribuindo o valor da massa do Sol.
        ms = 1
        !Atribuindo o valor da massa de Mercúrio.
        mme = 0.0000001d0
        !Atribuindo o valor da massa de Vênus.
        mv = (2/4.9)*0.000001d0
        !Atribuindo o valor da massa da Terra.
        mt = (1/3)*0.000001d0
        !Atribuindo o valor da massa de Marte.
        mma = (2/6.6)*0.0000001d0
        !Atribuindo o valor da massa de Júpiter.
        mj = 0.001d0
        !Atribuindo o valor da massa de Saturno.
        msa = (2/5.7)*0.0001d0
        !Atribuindo o valor da massa de Urano.
        mu = (2/8.8)*0.00001d0
        !Atribuindo o valor da massa de Netuno.
        mn = 1.03*0.0001d0
        !Atribuindo o valor da massa de Plutão.
        mp = (1/3)*0.000001d0
        !Abrindo o arquivo na onde serão salvos os dados das órbitas de
        !cada astro.
        open(2,file='saida-1-tarefa-B4.')
        open(3,file='saida-2-tarefa-B4.')
        open(4,file='saida-3-tarefa-B4.')
        open(5,file='saida-4-tarefa-B4.')
        open(6,file='saida-5-tarefa-B4.')
        open(7,file='saida-6-tarefa-B4.')
        open(8,file='saida-7-tarefa-B4.')
        open(9,file='saida-8-tarefa-B4.')
        open(10,file='saida-9-tarefa-B4.')
        open(11,file='saida-10-tarefa-B4.')
        !Chamando a subroutine que irá calcular as órbitas de cada astro
        !do sistema solar.
        call orbita(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mn,mp,vxs,vxme,
     &vxv,vxt,vxma,vxj,vxsa,vxu,vxn,vxp,vys,vyme,vyv,vyt,vyma,vyj,vysa
     &,vyu,vyn,vyp,x_1s,x_1me,x_1v,x_1t,x_1ma,x_1j,x_1sa,x_1u,x_1n,x_1p
     &,y_1s,y_1me,y_1v,y_1t,y_1ma,y_1j,y_1sa,y_1u,y_1n,y_1p,xs,xme,xv,xt
     &,xma,xj,xsa,xu,xn,xp,ys,yme,yv,yt,yma,yj,ysa,yu,yn,yp)
        !Fechando os arquivos na onde foram armazenados os valores da
        !órbita de cada planeta.
        close(2)
        close(3)
        close(4)
        close(5)
        close(6)
        close(7)
        close(8)
        close(9)
        close(10)
        close(11)
      end program main
!-----------------------------------------------------------------------
      !Criando a subroutine que irá calcular a órbita de cada astro do
      !sistema solar utilizando praticamente apenas o método de Verlet.
      subroutine orbita(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mn,mp,vxs,
     &vxme,vxv,vxt,vxma,vxj,vxsa,vxu,vxn,vxp,vys,vyme,vyv,vyt,vyma,vyj,
     &vysa,vyu,vyn,vyp,x_1s,x_1me,x_1v,x_1t,x_1ma,x_1j,x_1sa,x_1u,x_1n,
     &x_1p,y_1s,y_1me,y_1v,y_1t,y_1ma,y_1j,y_1sa,y_1u,y_1n,y_1p,xs,xme,
     &xv,xt,xma,xj,xsa,xu,xn,xp,ys,yme,yv,yt,yma,yj,ysa,yu,yn,yp)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a velocidade do centro de massa, que devido as
        !condições iniciais só possui componente no eixo y.
        v=(mme*vyme+mv*vyv+mt*vyt+mma*vyma+mj*vyj+msa*vysa+mu*vyu+mn*vyn
     &+mp*vyp+ms*vys)/(mme+mv+mt+mma+mj+msa+mu+mn+mp+ms)
        !Calculando a posição inicial do centro de massa, que devido as
        !condições iniciais só possui componente no eixo x.
        x=(x_1s*ms+x_1me*mme+x_1v*mv+x_1t*mt+x_1ma*mma+x_1j*mj+x_1sa*msa
     &+x_1u*mu+x_1n*mn+x_1p*mp)/(mme+mv+mt+mma+mj+msa+mu+mn+mp+ms)  
        do i = 1,300000
          !Condição para utilizar o método de Euler no cálculo da órbita
          !dos astors.
          if (i==1) then
            !Calculando a posição em Mercúrio
            xme=x_1me+vxme*dt
            yme=y_1me+vyme*dt
            !Calculando a posição em Vênus
            xv=x_1v+vxv*dt
            yv=y_1v+vyv*dt
            !Calculando a posição na Terra
            xt=x_1t+vxt*dt
            yt=y_1t+vyt*dt
            !Calculando a posição em Marte        
            xma=x_1ma+vxma*dt
            yma=y_1ma+vyma*dt
            !Calculando a posição em Júpter
            xj=x_1j+vxj*dt
            yj=y_1j+vyj*dt
            !Calculando a posição em Saturno
            xsa=x_1sa+vxsa*dt
            ysa=y_1sa+vysa*dt
            !Calculando a posição em Urano
            xu=x_1u+vxu*dt
            yu=y_1u+vyu*dt
            !Calculando a posição em Netuno
            xn=x_1n+vxn*dt
            yn=y_1n+vyn*dt
            !Calculando a posição em Plutão
            xp=x_1p+vxp*dt
            yp=y_1p+vyp*dt
            !Calculando a posição no Sol
            xs=x_1s+vxs*dt
            ys=y_1s+vys*dt
          !Condição para utilizar o método de Verlet no cálculo da
          !órbita dos astros.
          else
            !Calculando a posição em Mercúrio
            x1me=verlet(pi,g,dt,ms,mv,mt,mma,mj,msa,mu,mn,mp,x_1me,xme,
     &xs,xv,xt,xma,xj,xsa,xu,xn,xp,yme,ys,yv,yt,yma,yj,ysa,yu,yn,yp)
            y1me=verlet(pi,g,dt,ms,mv,mt,mma,mj,msa,mu,mn,mp,y_1me,yme,
     &ys,yv,yt,yma,yj,ysa,yu,yn,yp,xme,xs,xv,xt,xma,xj,xsa,xu,xn,xp)
            x_1me = xme
            xme = x1me
            y_1me = yme
            yme = y1me
            !Calculando a posição em Vênus
            x1v=verlet(pi,g,dt,ms,mme,mt,mma,mj,msa,mu,mn,mp,x_1v,xv,
     &xs,xme,xt,xma,xj,xsa,xu,xn,xp,yv,ys,yme,yt,yma,yj,ysa,yu,yn,yp)
            y1v=verlet(pi,g,dt,ms,mme,mt,mma,mj,msa,mu,mn,mp,y_1v,yv,
     &ys,yme,yt,yma,yj,ysa,yu,yn,yp,xv,xs,xme,xt,xma,xj,xsa,xu,xn,xp)
            x_1v = xv
            xv = x1v
            y_1v = yv
            yv = y1v
            !Calculando a posição na Terra
            x1t=verlet(pi,g,dt,ms,mme,mv,mma,mj,msa,mu,mn,mp,x_1t,xt,xs
     &,xme,xv,xma,xj,xsa,xu,xn,xp,yt,ys,yme,yv,yma,yj,ysa,yu,yn,yp)
            y1t=verlet(pi,g,dt,ms,mme,mv,mma,mj,msa,mu,mn,mp,y_1t,yt,ys
     &,yme,yv,yma,yj,ysa,yu,yn,yp,xt,xs,xme,xv,xma,xj,xsa,xu,xn,xp)
            x_1t = xt
            xt = x1t
            y_1t = yt
            yt = y1t
            !Calculando a posição em Marte
            x1ma=verlet(pi,g,dt,ms,mme,mv,mt,mj,msa,mu,mn,mp,x_1ma,xma,
     &xs,xme,xv,xt,xj,xsa,xu,xn,xp,yma,ys,yme,yv,yt,yj,ysa,yu,yn,yp)
            y1ma=verlet(pi,g,dt,ms,mme,mv,mt,mj,msa,mu,mn,mp,y_1ma,yma,
     &ys,yme,yv,yt,yj,ysa,yu,yn,yp,xma,xs,xme,xv,xt,xj,xsa,xu,xn,xp)
            x_1ma = xma
            xma = x1ma
            y_1ma = yma
            yma = y1ma       
            !Calculando a posição em Júpter
            x1j=verlet(pi,g,dt,ms,mme,mv,mt,mma,msa,mu,mn,mp,x_1j,xj,xs
     &,xme,xv,xt,xma,xsa,xu,xn,xp,yj,ys,yme,yv,yt,yma,ysa,yu,yn,yp)
            y1j=verlet(pi,g,dt,ms,mme,mv,mt,mma,msa,mu,mn,mp,y_1j,yj,ys
     &,yme,yv,yt,yma,ysa,yu,yn,yp,xj,xs,xme,xv,xt,xma,xsa,xu,xn,xp)
            x_1j = xj
            xj = x1j
            y_1j = yj
            yj = y1j
            !Calculando a posição em Saturno
            x1sa=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,mu,mn,mp,x_1sa,xsa,
     &xs,xme,xv,xt,xma,xj,xu,xn,xp,ysa,ys,yme,yv,yt,yma,yj,yu,yn,yp)
            y1sa=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,mu,mn,mp,y_1sa,ysa,
     &ys,yme,yv,yt,yma,yj,yu,yn,yp,xsa,xs,xme,xv,xt,xma,xj,xu,xn,xp)
            x_1sa = xsa
            xsa = x1sa
            y_1sa = ysa
            ysa = y1sa
            !Calculando a posição em Urano
            x1u=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mn,mp,x_1u,xu,xs
     &,xme,xv,xt,xma,xj,xsa,xn,xp,yu,ys,yme,yv,yt,yma,yj,ysa,yn,yp)
            y1u=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mn,mp,y_1u,yu,ys
     &,yme,yv,yt,yma,yj,ysa,yn,yp,xu,xs,xme,xv,xt,xma,xj,xsa,xn,xp)
            x_1u = xu
            xu = x1u
            y_1u = yu
            yu = y1u
            !Calculando a posição em Netuno
            x1n=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mp,x_1n,xn,xs
     &,xme,xv,mt,xma,xj,xsa,xu,xp,yn,ys,yme,yv,yt,yma,yj,ysa,yu,yp)
            y1n=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mp,y_1n,yn,ys
     &,yme,yv,yt,yma,yj,ysa,yu,yp,xn,xs,xme,xv,xt,xma,xj,xsa,xu,xp)
            x_1n = xn
            xn = x1n
            y_1n = yn
            yn = y1n
            !Calculando a posição em Plutão
            x1p=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mn,x_1p,xp,xs
     &,xme,xv,xt,xma,xj,xsa,xu,xn,yp,ys,yme,yv,yt,yma,yj,ysa,yu,yn)
            y1p=verlet(pi,g,dt,ms,mme,mv,mt,mma,mj,msa,mu,mn,y_1p,yp,ys
     &,yme,yv,yt,yma,yj,ysa,yu,yn,xp,xs,xme,xv,xt,xma,xj,xsa,xu,xn)
            x_1p = xp
            xp = x1p
            y_1p = yp
            yp = y1p
            !Calculando a posição no Sol
            x1s=verlet(pi,g,dt,mme,mv,mt,mma,mj,msa,mu,mn,mp,x_1s,xs,xme
     &,xv,xt,xma,xj,xsa,xu,xn,xp,ys,yme,yv,yt,yma,yj,ysa,yu,yn,yp)
            y1s=verlet(pi,g,dt,mme,mv,mt,mma,mj,msa,mu,mn,mp,y_1s,ys,yme
     &,yv,yt,yma,yj,ysa,yu,yn,yp,xs,xme,xv,xt,xma,xj,xsa,xu,xn,xp)
            x_1s = xs
            xs = x1s
            y_1s = ys
            ys = y1s
          end if
          !Escrevendo nos arquivos de saída as orbitas obtidas para cada
          !astro em relação ao centro de massa.
          write(2,*) x_1s-x, y_1s-v*i*dt
          write(3,*) x_1me-x, y_1me-v*i*dt
          write(4,*) x_1v-x, y_1v-v*i*dt
          write(5,*) x_1t-x, y_1t-v*i*dt
          write(6,*) x_1ma-x, y_1ma-v*i*dt
          write(7,*) x_1j-x, y_1j-v*i*dt
          write(8,*) x_1sa-x, y_1sa-v*i*dt
          write(9,*) x_1u-x, y_1u-v*i*dt
          write(10,*) x_1n-x, y_1n-v*i*dt
          write(11,*) x_1p-x, y_1p-v*i*dt
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
      !qb, qc, etc, segue o raciocínio do astro a só que para o astro b.
      !ra, rb, rc, etc, são o segundo valor da coordenada generalizada que
      !completa a infomação da posição dos astros no plano.
      function verlet(pi,g,dt,mb,mc,md,me,mf,mg,mh,mi,mj,qa_1,qa,qb,qc,
     &qd,qe,qf,qg,qh,qi,qj,ra,rb,rc,rd,re,rf,rg,rh,ri,rj)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Inserindo o cálculo da posição do astro pelo método de Verlet.
        verlet=2*qa-qa_1+aceleracao(pi,g,mb,mc,md,me,mf,mg,mh,mi,mj,qa,
     &qb,qc,qd,qe,qf,qg,qh,qi,qj,ra,rb,rc,rd,re,rf,rg,rh,ri,rj)*dt**2
      end function verlet
!-----------------------------------------------------------------------
      !Definindo a função que calculará o valor da aceleração sentida
      !por cada astro devido a força gravitacional exercida sobre o
      !mesmo.
      function aceleracao(pi,g,mb,mc,md,me,mf,mg,mh,mi,mj,qa,
     &qb,qc,qd,qe,qf,qg,qh,qi,qj,ra,rb,rc,rd,re,rf,rg,rh,ri,rj)
        !Transformando todos as variáveis que são REAL*4 por padrão em
        !REAL*8, e definindo m como real*8 também pois m será muito
        !usada para a massa dos planetas e achei melhor usar m mesmmo
        !para que não haja confusão.
        implicit real*8 (a-h,m,o-z)
        !Calculando a aceleração sentida por cada astro
        aceleracao = -g*(mb*(qa-qb)/((qa-qb)**2+
     &(ra-rb)**2)**(3/2.d0)+mc*(qa-qc)/((qa-qc)**2+
     &(ra-rc)**2)**(3/2.d0)+md*(qa-qd)/((qa-qd)**2+
     &(ra-rd)**2)**(3/2.d0)+me*(qa-qe)/((qa-qe)**2+
     &(ra-re)**2)**(3/2.d0)+mf*(qa-qf)/((qa-qf)**2+
     &(ra-rf)**2)**(3/2.d0)+mg*(qa-qg)/((qa-qg)**2+
     &(ra-rg)**2)**(3/2.d0)+mh*(qa-qh)/((qa-qh)**2+
     &(ra-rh)**2)**(3/2.d0)+mi*(qa-qi)/((qa-qi)**2+
     &(ra-ri)**2)**(3/2.d0)+mj*(qa-qj)/((qa-qj)**2+
     &(ra-rj)**2)**(3/2.d0))
      end function aceleracao
