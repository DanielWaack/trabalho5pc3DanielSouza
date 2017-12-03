package br.com.prog3.trabalho5pc3.DanielSouza;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CrudDisciplina {
	static Map<Integer, Disciplina> mapaDisciplina;
	static List<Disciplina> lista;

	public CrudDisciplina() {
		Disciplina a = new Disciplina();
		Disciplina b = new Disciplina();

		a.setCodigo(12345);
		b.setCodigo(67890);
		a.setCargaHoraria(60);
		b.setCargaHoraria(45);
		a.setDescricao("Disciplina A.");
		b.setDescricao("Disciplina B.");

		mapaDisciplina = new HashMap<>();
		mapaDisciplina.put(a.getCodigo(), a);
		mapaDisciplina.put(b.getCodigo(), b);
	}

	public List<Disciplina> listarTodos() {
		lista = new ArrayList<>();
		for (Map.Entry<Integer, Disciplina> entry : mapaDisciplina.entrySet()) {
			Integer key = entry.getKey();
			lista.add(mapaDisciplina.get(key));
		}
		return lista;
	}

	public Disciplina buscarPeloCodigo(int codigo) {
		return mapaDisciplina.get(codigo);
	}

	public void inserir(Disciplina disciplina) {
		mapaDisciplina.put(disciplina.getCodigo(), disciplina);
	}

	public void excluir(Disciplina disciplina) {
		if (mapaDisciplina.containsKey(disciplina.getCodigo())) {
			mapaDisciplina.remove(disciplina.getCodigo());
		}
	}

	public void alterar(Disciplina disciplina) {
		if (mapaDisciplina.containsKey(disciplina.getCodigo())) {
			mapaDisciplina.put(disciplina.getCodigo(), disciplina);
		}
		mapaDisciplina.replace(disciplina.getCodigo(), disciplina);
	}

}
