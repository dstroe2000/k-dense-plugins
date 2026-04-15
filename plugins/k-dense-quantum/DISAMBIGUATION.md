# Skill Disambiguation — Quantum Computing

## 4 skills — WELL DIFFERENTIATED (vendor/method split)

```
"I need quantum computing"
  │
  ├─ IBM hardware?
  │   └─ qiskit — Qiskit Runtime, error mitigation
  │
  ├─ Google hardware?
  │   └─ cirq — noise-aware circuits, characterization
  │
  ├─ Hardware-agnostic / quantum ML?
  │   └─ pennylane — autodiff, variational algorithms, any backend
  │
  └─ Quantum physics simulation (not circuits)?
      └─ qutip — master equations, Lindblad dynamics, cavity QED
```

**Key distinction**: qiskit/cirq/pennylane are circuit-based quantum computing. qutip is quantum physics simulation — different domain entirely.
