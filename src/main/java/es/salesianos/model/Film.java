package es.salesianos.model;

import java.util.List;

public class Film {
	private Integer cod;
	private String tittle;
	private Integer codDirector;
	private Director director;
	private List<FilmActors> filmActor;

	public Integer getCOD() {
		return cod;
	}

	public void setCod(Integer cod) {
		this.cod = cod;
	}

	public Integer getCodDirector() {
		return codDirector;
	}

	public void setCodDirector(Integer Codowner) {
		codDirector = Codowner;
	}

	public Director getDirector() {
		return director;
	}

	public void setDirector(Director director) {
		this.director = director;
	}

	public List<FilmActors> getFilmActor() {
		return filmActor;
	}

	public void setFilmActor(List<FilmActors> filmActor) {
		this.filmActor = filmActor;
	}

	public String getTittle() {
		return tittle;
	}

	public void setTittle(String tittle) {
		this.tittle = tittle;
	}

}
