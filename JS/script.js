

    function mandarprod(idProduto) {
        // Faz um redirecionamento sem adicionar a página original ao histórico de navegação do browser.
        window.location.href = 'produtos.html#' + idProduto;
    }
 // Adiciona um evento de clique ao botão
    const botaoVoltarAoTopo = document.getElementById('voltarAoTopo');
    //movimento de rolagem na tela
    botaoVoltarAoTopo.addEventListener('click', () => {
      // Faz a página voltar ao topo
      window.scrollTo({ top: 0, behavior: 'smooth' });
  });

  // Adiciona um evento de rolagem à janela
  window.addEventListener('scroll', () => {
      // Verifica a posição da rolagem
      if (window.scrollY > 100) { // Exibe o botão quando a página é rolada para baixo
          botaoVoltarAoTopo.style.display = 'block';
      } else { // Oculta o botão quando a página está no topo
          botaoVoltarAoTopo.style.display = 'none';
      }
  });

  