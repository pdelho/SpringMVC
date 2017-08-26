package com.journaldev.model;

public class Match {

	public Match(Team local, Team visitor) {
		super();
		this.local = local;
		this.visitor = visitor;
	}
	
	private Team local;
	private Team visitor;
	
	public Team getLocal() {
		return local;
	}
	public void setLocal(Team local) {
		this.local = local;
	}
	public Team getVisitor() {
		return visitor;
	}
	public void setVisitor(Team visitor) {
		this.visitor = visitor;
	}
	
	@Override
	public String toString() {
		return "Match [local=" + local.getGroupChar() + "" + local.getPosition() + ", visitor=" + visitor.getGroupChar() +"" +visitor.getPosition() + "]";
	}
	
}
